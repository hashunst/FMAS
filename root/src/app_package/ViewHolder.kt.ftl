package ${packageName}

import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import ${packageName}.R

class ${className}ViewHolder(parent: ViewGroup):RecyclerView.ViewHolder(
    LayoutInflater.from(parent.context).inflate(R.layout.sample_item, parent, false)) {

    var ${objectName}: ${className}? = null
    var example = itemView.findViewById<TextView>(R.id.example)

    fun bindTo(${objectName}: ${className}){
        this.${objectName} = ${objectName}
        example.text = ${objectName}.id.toString()

    }

}
