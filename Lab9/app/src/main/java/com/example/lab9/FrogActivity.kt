package com.example.lab9

import android.app.Activity
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.util.Log
import android.view.View
import com.google.android.material.floatingactionbutton.FloatingActionButton
import com.google.android.material.snackbar.Snackbar
import androidx.appcompat.app.AppCompatActivity
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.coordinatorlayout.widget.CoordinatorLayout
import kotlinx.android.synthetic.main.activity_frog.*
import kotlinx.android.synthetic.main.activity_main.*
import kotlinx.android.synthetic.main.content_frog.*

class FrogActivity : AppCompatActivity() {
    private var frogShopName : String? = null
    private var frogShopURL : String? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_frog)
        setSupportActionBar(findViewById(R.id.toolbar))

        frogShopName = intent.getStringExtra("frogShopName")
        frogShopURL = intent.getStringExtra("frogShopURL")

        frogShopName?.let { Log.i("shop received", it)}
        frogShopURL?.let {Log.i("url received", it)}

        frogShopName?.let {frogShopTextView.text = "You should get a frog from $frogShopName"}

        findViewById<FloatingActionButton>(R.id.fab).setOnClickListener {view ->
            loadWebSite()
           // Snackbar.make(view, "Your phone doesn't have an app to open this", Snackbar.LENGTH_LONG).setAction("Action", null).show()
        }
    }

    fun loadWebSite(){
        val intent = Intent()
        intent.action = Intent.ACTION_VIEW
        intent.data = frogShopURL?.let { Uri.parse(frogShopURL)}

        if (intent.resolveActivity(packageManager) != null){
            startActivity(intent)
        }else{
            Snackbar.make(fab, "Your phone doesn't have an app to open this", Snackbar.LENGTH_LONG).setAction("Action", null).show()
        }
    }
    override fun onBackPressed(){
        val data = Intent()
        data.putExtra("feedback", feedbackEditText.text.toString())
        setResult(Activity.RESULT_OK, data)
        super.onBackPressed()
        finish()
    }
}