package ${packageName}

import androidx.room.Delete
import androidx.room.Insert


interface BaseDao<T> {

    @Insert
    fun insert(list: List<T>)

    @Insert
    fun insert(item: T):Long

    @Delete
    fun delete(item: T)

}




//// gradle needs
//
//implementation "androidx.paging:paging-runtime-ktx:2.1.1" // For Kotlin use paging-runtime-ktx
//
//// alternatively - without Android dependencies for testing
//testImplementation "androidx.paging:paging-common-ktx:2.1.1" // For Kotlin use paging-common-ktx
//
//// optional - RxJava support
//implementation "androidx.paging:paging-rxjava2-ktx:2.1.1" // For Kotlin use pa