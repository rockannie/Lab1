package com.example.lab9

import android.app.Activity
import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.RadioButton
import com.google.android.material.snackbar.Snackbar
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    private var myFrogShop = secondPage();
    private var selectedLocationPosition = 0
    private val REQUEST_CODE = 1

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        //event listener
        nextButton.setOnClickListener{
            selectedLocationPosition = optionSpinner.selectedItemPosition
            myFrogShop.suggestFrogShop(selectedLocationPosition);
            Log.i("shop suggested", myFrogShop.name);
            Log.i("url suggested", myFrogShop.url);

            //intent
            val intent = Intent(this, FrogActivity::class.java)
            intent.putExtra("frogShopName", myFrogShop.name)
            intent.putExtra("frogShopURL", myFrogShop.url)

            startActivityForResult(intent, REQUEST_CODE)
        }
    }

    fun createFrog(view: View)
    {

        var location = optionSpinner.selectedItem

        if(optionSwitch.isChecked){
            location = "$location" + " that is exotic"
        }

        resultTextView.text = "You're looking for a frog in $location"
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if((requestCode == REQUEST_CODE) && (resultCode == Activity.RESULT_OK)){
            reviewTextView.setText(data?.let{data.getStringExtra("feedback")})
        }
    }
}