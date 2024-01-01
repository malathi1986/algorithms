public with sharing class ArrayUtil {

    // Find the index of a given element in an array 
    public static Integer toFindIndex(Integer[] numArray, Integer element){
        Integer i;
        Integer index = -1;
        for(i=0;i<numArray.size();i++){
            if(element == numArray[i]){
                index = i;
            }
        }
        System.debug('The index is' +index);
       return index;
    }
     

    // Find how many times an element is present in an array
    public static Integer toFindnumberOfTimes(Integer[] numArray, Integer element){
        Integer count=0;
        Integer numOfOccurances;
        Map<Integer, Integer> elementCounts = new Map<Integer, Integer>(); 
        for(Integer i=0;i<numArray.size();i++){
            if(elementCounts.get(numArray[i]) == null){
                elementCounts.put(numArray[i], 1);

            } else {
                count =elementCounts.get(numArray[i]);
                elementCounts.put(numArray[i], count+1);
            }            
        }
        numOfOccurances=elementCounts.get(element);
        System.debug('logLevel'+numOfOccurances);
       return numOfOccurances;
    }


    // Write a method to find out if the two array is same or not.

    public static Boolean isTwoArraySame(Integer[] numArray1,Integer[] numArray2){
         Boolean result=false;
        if(numArray1.size()==numArray2.size()){
            for(Integer i=0;i<numArray1.size();i++){
                if(numArray1[i]==numArray2[i]){
                    result=true;
                    System.debug('Two Arrays are same=====>'+result);  
                } else{
                    result=false;
                }          
            }
        }  
        return result; 
    }


    // Write a method to find out if the reverse of the array is same or not.
    public static Boolean isReverseSame(Integer[] numArray){
        Integer[] arrayRev = new Integer[numArray.size()];
        Integer index = 0;
        for (Integer i = numArray.size()-1; i >= 0; i--) {
            System.debug('The Index value is:'+i);
            System.debug('The Reverse format of the Array is:'+numArray[i]);
            arrayRev[index] = numArray[i]; 
            index++;       
        }
        if(arrayRev==numArray){
            System.debug('The Reverse of the array is:'+arrayRev);
            return true;
        }
        return false;
    }

    // Write a method to remove a sub array from an array 
    public static Integer[] removeSubArray(Integer[] mainArray,Integer[] subArray){
        Integer tempIndex = 0;
        Integer endIndex = 0;
        Boolean matchFound = false;
        for (Integer i = 0; i < subArray.size(); i++) {
            for(Integer j=tempIndex;j<mainArray.size();j++){
               if(subArray[i] == mainArray[j]){
                    tempIndex = j+1;
                    endIndex = j;
                    matchFound = true;
                    break;
               } else {
                    matchFound = false;
               } 
            }      
        }  
        if(matchFound){
            Integer startIndex = endIndex - subArray.size();
            for (Integer i = 0; i < mainArray.size(); i++) {
                
            }
            //Logic to remove the sub array.
            System.debug(LoggingLevel.INFO, 'Sub array found at ');
        }
        return null;
    }

    // Write a method to find out how many times a given sub array is present in the array

    // Find if a given sub array exists in an array.
    // For example, [4,2] is an sub array in [2,3,4,5,4,2] 
    public static Boolean isSubArray(Integer[] main, Integer[] sub){
        return false;
    }
}