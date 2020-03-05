package ${packageName}

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import androidx.paging.Config
import ${packageName}.db.MainDB
import ${packageName}.ioThread

class ${className}ViewModel(var app: Application) : AndroidViewModel(app) {

    private val ${objectName}Dao = MainDB.get(app).${objectName}Dao()

    val all = ${objectName}Dao.all().toLiveData(Config(pageSize = 30, enablePlaceholders = true, maxSize = 300))

    fun insert(item: ${className}, me:(id:Long)->Unit) = ioThread {
        val id = ${objectName}Dao.insert(item)
        me.invoke(id)
    }

}