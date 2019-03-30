    # Random Generator


    num_participants = 30

    categories = c("silhouette", "food", "nature", "face")

    num_presentations = 40

    results_table = matrix("test", nrow=num_presentations*2, ncol=length(categories))


    for (i in 1:(num_presentations*2)) {

      if((i %% 2) == 1) {

        for (j in 1:length(categories)) {

          results_table[i,j] = categories[ceiling(runif(1)*4)]

        }
        
      } else {

        tmp = ceiling(runif(1)*num_presentations)

        cur = num_presentations-tmp

        results_table[i,1] = as.character(tmp)

         for (j in 2:(length(categories)-1)) {

            tmp = ceiling(runif(1)*cur)

            cur = cur-tmp

            # cat("\n tmp: ", tmp, "cur: ", cur, "\n\n")


            results_table[i,j] = as.character(tmp)

        }

        #results_table[i,results[i,] == ""] = 0

        prev = as.double(results_table[i,1:j])

        j = j+1

        results_table[i,j] = 
            as.character(num_presentations-sum(prev))

      }
    }
      
      
      write.table(results_table, "fake_experiment_data.csv", sep=",", row.names=F, col.names=F)


    for(i in 1:now(x)){

      for( j in 1:(ncol(x)-1)){
    
        results_table[i,j] = paste(results_table[i,j], ", ")

      }
  }

