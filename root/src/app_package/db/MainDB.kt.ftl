package ${packageName};

import android.content.Context
import androidx.room.*
import androidx.sqlite.db.SupportSQLiteDatabase
import ${packageName}.ioThread

@Database(
    entities = [
        XXX::class
    ],
    version = 1)
abstract class MainDB: RoomDatabase() {

    abstract fun xxxDao(): XXXDao

    companion object {
        private var instance: MainDB? = null
        @Synchronized
        fun get(context: Context): MainDB {
            if (instance == null) {
                instance = Room.databaseBuilder(
                    context.applicationContext,
                    MainDB::class.java,
                    "CheeseDatabase"
                )
                    .addCallback(object : RoomDatabase.Callback() {
                        override fun onCreate(db: SupportSQLiteDatabase) {
                            fillInDb(context.applicationContext)
                        }
                    })
//                    .fallbackToDestructiveMigration()
                    .build()
            }
            return instance!!
        }

        /**
         * fill database with list of cheeses
         */
        private fun fillInDb(context: Context) {
//             inserts in Room are executed on the current thread, so we insert in the background
            ioThread {

                get(context).xxxDao().insert(
                    arrayListOf(
                        XXX(0, -1)
                    )
                )
        }
    }

}


// gradle needs

//    this have to be in the top of app gradle
//    apply plugin: 'kotlin-kapt'

// ----------------------------------------------


//    def room_version = "2.2.3"
//
//    implementation "androidx.room:room-runtime:$room_version"
//    kapt "androidx.room:room-compiler:$room_version" // For Kotlin use kapt instead of annotationProcessor
//
//    // optional - Kotlin Extensions and Coroutines support for Room
//    implementation "androidx.room:room-ktx:$room_version"
//
//    // optional - RxJava support for Room
//    implementation "androidx.room:room-rxjava2:$room_version"
//
//    // optional - Guava support for Room, including Optional and ListenableFuture
//    implementation "androidx.room:room-guava:$room_version"
//
//    // Test helpers
//    testImplementation "androidx.room:room-testing:$room_version"