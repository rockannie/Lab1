package com.example.lab9

data class secondPage(var name:String="", var url:String="") {
    fun suggestFrogShop(position: Int){
        setFrogShopName(position)
        setFrogShopURL(position)
    }

    private fun setFrogShopName(position:Int){
        when(position){
            0 -> name="Petco"
            1 -> name="Mr. Fs Frog Emporium"
            2 -> name="Petsmart"
            else -> name="pet shop of your choice"
        }
    }

    private fun setFrogShopURL(position: Int){
        when(position){
            0 -> url="https://www.petco.com/shop/en/petcostore"
            1 -> url="https://www.google.com/search?q=mr+f%27s+frog+emporium&rlz=1C1CHBF_enUS912US913&hl=en&sxsrf=ALeKk02YrH2UPlqRZiuOh9EOkxfwcRqX3w:1606354191437&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiS2drXh5_tAhUGKa0KHV2cA6MQ_AUoAXoECAcQAw&biw=884&bih=927"
            2 -> url="https://www.petsmart.com/"
            else -> url="https://www.google.com/search?q=frog+shop&rlz=1C1CHBF_enUS912US913&oq=frog+shop+&aqs=chrome..69i57.2043j0j7&sourceid=chrome&ie=UTF-8"
        }
    }
}