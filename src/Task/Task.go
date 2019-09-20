
package main

import (

    "encoding/csv"
    "io"
    "fmt"
    "bufio"
    "os"
    "database/sql"
  _ "github.com/go-sql-driver/mysql"
    
)


func main() {

    // Open the file
    data, err := os.Open("D:/gocode/data.csv")
  
    if err != nil { 
         panic(err.Error())
    }

    //close the file
    defer data.Close() 
    rows, err := readSample(data) // Parse the file
    if err != nil {
         panic(err.Error())
    }

    // Open the db connection
    db, err := sql.Open("mysql", "root:@/task")

    // if there is an error opening the connection
    if err != nil {
        panic(err.Error())
    }

    //Store the Parsed data in Mysql
    for _, each := range rows {

        insert, err := db.Prepare("INSERT INTO Persons(First_Name, Last_name, Age, Blood_group) VALUES(?,?,?,?)")
        if err != nil {
            panic(err.Error())
        }
        insert.Exec(each[0],each[1],each[2],each[3])
        
         }
            //close db connection
             defer db.Close()
             fmt.Printf("Data Successfully Inserted!")
}



func readSample(rs io.ReadSeeker) ([][]string, error) {
    
    // Skip first row (line)
    row1, err := bufio.NewReader(rs).ReadSlice('\n')
    if err != nil {
        return nil, err
    }
    _, err = rs.Seek(int64(len(row1)), io.SeekStart)
    if err != nil {
        return nil, err
    }

    // Read remaining rows
    r := csv.NewReader(rs)  
    rows, err := r.ReadAll()
    if err != nil {
        return nil, err
    }
    return rows, nil
}





