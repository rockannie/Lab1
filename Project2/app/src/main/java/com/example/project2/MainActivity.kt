package com.example.project2

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.Editable
import android.util.Log
import android.view.View
import android.widget.EditText
import android.widget.RadioButton
import androidx.constraintlayout.solver.state.State
import androidx.constraintlayout.widget.ConstraintLayout
import com.google.android.material.snackbar.Snackbar
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    fun calculateCost(view: View)
    {
        //grab radio value
        val allotedTime = radioGroup.checkedRadioButtonId
        if(allotedTime == -1){
            val sizeSnackbar = Snackbar.make(monthlyText2, "Please select a budget time frame", Snackbar.LENGTH_SHORT)
            sizeSnackbar.show()
        }
        else {
            var allotedTime2: CharSequence = ""
            allotedTime2 = findViewById<RadioButton>(allotedTime).text

            //grab expense value
            val editexpenses = findViewById<EditText>(R.id.expensesInput)
            val expensestext = editexpenses.text.toString()

            //grab income value
            val editincome = findViewById<EditText>(R.id.incomeInput)
            val incometext = editincome.text.toString()

            //grab purchase value
            val editpurchases = findViewById<EditText>(R.id.purchaseInput)
            val purchasestext = editpurchases.text.toString()

            //grab whatever is in savings, even if null
            val editsavings = findViewById<EditText>(R.id.savingsInput)
            val savingstext = editsavings.text.toString()

            if (expensestext == ""){
                val sizeSnackbar = Snackbar.make(monthlyText2, "Please input your expenses", Snackbar.LENGTH_SHORT)
                sizeSnackbar.show()
            }
            else if (incometext == ""){
                val sizeSnackbar = Snackbar.make(monthlyText2, "Please input your income", Snackbar.LENGTH_SHORT)
                sizeSnackbar.show()
            }
            else if (purchasestext == ""){
                val sizeSnackbar = Snackbar.make(monthlyText2, "Please input a purchase value", Snackbar.LENGTH_SHORT)
                sizeSnackbar.show()
            }
            else {
                //convert expense val to int
                val expenses: Int = expensestext.toInt()

                // convert income val to int
                val income: Int = incometext.toInt()

                //convert purchase val to int
                var purchases: Int = purchasestext.toInt()

                //calculate cost + ability to purchase
                val leftover = income - expenses
                val canAfford = leftover - (purchases * 2)
                if (canAfford < 0) {
                    if (savingstext != "") {

                        val savings: Int = savingstext.toInt()
                        purchases = (purchases * 2) - leftover
                        val timetook = purchases / savings
                        resultText.text = "You cannot afford that purchase right now. With your input savings amount of $savings dollars you could afford this in $timetook $allotedTime2."
                    } else {
                        //calculate how much they'd need to save over a time period
                        purchases = (purchases * 2) - leftover
                        val percentage = .25 * purchases
                        val timetooketh = purchases / percentage
                        resultText.text = "You cannot afford that purchase right now. If you saved $percentage over the next $timetooketh $allotedTime2 you could afford it."
                    }
                } else {
                    resultText.text = "You can afford that right now!"
                }
            }
        }
        //You would need to save for # pulled from math + [insert radiochoice here]s to buy that
    }
}
