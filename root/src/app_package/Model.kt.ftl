package ${packageName};

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity
data class ${className}(
    @PrimaryKey(autoGenerate = true)
    var id:Long
//    var title:String
){
//    companion object {
//        fun instance() = ${className}()
//        fun smaple() = ${className}()
//    }
}
