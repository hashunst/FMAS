package ${packageName}

import androidx.lifecycle.LiveData
import androidx.paging.DataSource
import androidx.room.*

@Dao
interface ${className}Dao : BaseDao<${className}> {
    /**
     * Room knows how to return a LivePagedListProvider, from which we can get a LiveData and serve
     * it back to UI via ViewModel.
     */
    @Query("SELECT * FROM ${className}")
    fun all(): DataSource.Factory<Int, ${className}>

    @Query("SELECT * FROM ${className} WHERE id = :id")
    fun getById(id:Long): LiveData<${className}>


    @Query("Delete from ${className}")
    fun deleteAll()
}
