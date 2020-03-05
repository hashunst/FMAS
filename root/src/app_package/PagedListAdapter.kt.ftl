package ${packageName};

import android.view.ViewGroup
import androidx.paging.PagedListAdapter
import androidx.recyclerview.widget.DiffUtil

class ${className}Adapter:PagedListAdapter<${className}, ${className}ViewHolder>(diffCallback) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int) =
        ${className}ViewHolder(parent)

    override fun onBindViewHolder(holder: ${className}ViewHolder, position: Int) {
        getItem(position)?.let { holder.bindTo(it) }
    }

    companion object {
        private val diffCallback = object : DiffUtil.ItemCallback<${className}>() {
            override fun areItemsTheSame(oldItem: ${className}, newItem: ${className}): Boolean =
                oldItem.id == newItem.id

            /**
             * Note that in kotlin, == checking on data classes compares all contents, but in Java,
             * typically you'll implement Object#equals, and use it to compare object contents.
             */
            override fun areContentsTheSame(oldItem: ${className}, newItem: ${className}): Boolean =
                oldItem == newItem
        }
    }
}