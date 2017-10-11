//
//  PathManager.m
//  01-周末作业
//
//  Created by qianfeng on 15-11-2.
//  Copyright (c) 2015年 sunck. All rights reserved.
//

#import "PathManager.h"

@implementation PathManager
+(BOOL)isAbsolutePath:(NSString *)path{
    return [path hasPrefix:@"/"];
}

+(NSString *)deleteLastDiagonal:(NSString *)path{
    if ([path hasSuffix:@"/"]) {
        return [path substringToIndex:[path length] - 1];
    }
    return path;
}

+(NSString *)getLastComponentWithPath:(NSString *)path{
    NSString *newPath = [self deleteLastDiagonal:path];
    
    NSRange range = [newPath rangeOfString:@"/" options:NSBackwardsSearch];
    
    return [newPath substringFromIndex:range.location + 1];
}


+(NSString *)deleteLastComponentWithPath:(NSString *)path{
//    NSString *newPath = [self deleteLastDiagonal:path];
//    
//    NSRange range = [newPath rangeOfString:@"/" options:NSBackwardsSearch];
//    
//    return [newPath substringToIndex:range.location];
    
    
    
    
    NSString *newPath = [self deleteLastDiagonal:path];
    NSMutableString *mutPath = [NSMutableString stringWithString:newPath];

    NSRange range = [mutPath rangeOfString:@"/" options:NSBackwardsSearch];
    
    [mutPath deleteCharactersInRange:NSMakeRange(range.location, [mutPath length] - range.location)];
    return mutPath;
}


+(NSString *)newPathWithNormalPath:(NSString *)normal increasePath:(NSString *)increase{
    NSString *newPath = [self deleteLastDiagonal:normal];
    
    NSString *path = [NSString stringWithFormat:@"%@/%@", newPath, increase];
    return path;
    
    
    //return [NSString stringWithFormat:@"%@/%@", [self deleteLastDiagonal:normal], increase];
}



+(NSString *)getFileExtensionWithPath:(NSString *)path{
    NSString *newPath = [self deleteLastDiagonal:path];
    
    NSRange range = [newPath rangeOfString:@"." options:NSBackwardsSearch];

    return [newPath substringFromIndex:range.location + 1];
}

+(NSString *)deleteFileExtensionWithPath:(NSString *)path{
    NSString *newPath = [self deleteLastDiagonal:path];
    
    NSRange range = [newPath rangeOfString:@"." options:NSBackwardsSearch];
    
    return [newPath substringToIndex:range.location];
}

//     //Users/qianfeng/Desktop/1521OC课程/day05/课程代码/05-day04作业/02-可变字符串/kaizi.txt
+(NSString *)deleteDuplicateSlashWithPath:(NSString *)path{
    NSMutableString *mutPath = [NSMutableString stringWithString:[self deleteLastDiagonal:path]];
    int i = 0;
    for (i = 1; i < [mutPath length]; i++) {
        char chr = [mutPath characterAtIndex:i];
        if (chr != '/') {
            break;
        }
    }
    if (i != 1) {
        [mutPath deleteCharactersInRange:NSMakeRange(1, i - 1)];
    }
    return mutPath;
}



+(NSString *)joinPathOfComponents:(NSArray *)comp{
//    NSString *path = [comp componentsJoinedByString:@"/"];
//    
//    NSString *newPath = [@"/" stringByAppendingString:path];
//    
//    return newPath;
    
    NSMutableString *path = [[NSMutableString alloc] init];
    for (NSString *increse in comp) {
        [path appendFormat:@"/%@", increse];
    }
    return path;
}


+(NSString *)objcIdentifierFromCppIdentifier:(NSString *)idf{
    NSString *newIdf = [idf capitalizedString];
   
    NSArray *array = [newIdf componentsSeparatedByString:@"_"];
    NSMutableArray *mutArray = [NSMutableArray arrayWithArray:array];
    NSString *string = [mutArray[0] lowercaseString];
    
    [mutArray removeObjectAtIndex:0];
    [mutArray insertObject:string atIndex:0];
    
    NSString *retStr = [mutArray componentsJoinedByString:@""];
    
    return retStr;
    
    
    
    

//    NSMutableArray *mutArray = [NSMutableArray arrayWithArray:[[idf capitalizedString] componentsSeparatedByString:@"_"]];
//
//    [mutArray removeObjectAtIndex:0];
//    [mutArray insertObject:[mutArray[0] lowercaseString] atIndex:0];
//
//    return [mutArray componentsJoinedByString:@""];

}

//  -+-""/*""/-+

//  6 1 4 7 2 10 2 98 2 3 4
//   - * + - *""/ *""/ - +

//  6 4 7 2 10 2 98 2 3 4
//   - + - *""/ *""/ - +

//  6 4 7 20 2 98 2 3 4
//   - + -  / *  / - +
+(NSString *)resultFromExpression:(NSString *)expression{
    NSArray *numArray = [expression componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"+-*/"]];
    NSMutableArray *mutNumArray = [NSMutableArray arrayWithArray:numArray];
    NSArray *signArray = [expression componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"0123456789"]];
    NSMutableArray *mutSignArray = [NSMutableArray arrayWithArray:signArray];
    
    [mutSignArray removeObject:@""];
    //NSLog(@"***mutSignArray = %@", mutSignArray);
    
    for (int i = 0; i < [mutSignArray count]; i++) {
        //NSLog(@"[signArray objectAtIndex:i] = %@", [signArray objectAtIndex:i]);
        if ([[mutSignArray objectAtIndex:i] isEqualToString:@"*"]) {

            [mutNumArray replaceObjectsInRange:NSMakeRange(i, 2) withObjectsFromArray:@[[NSString stringWithFormat:@"%d", [mutNumArray[i] intValue] * [mutNumArray[i + 1] intValue]]]];
            
            [mutSignArray removeObjectAtIndex:i];
            
            i = -1;
            
        }else if ([[mutSignArray objectAtIndex:i] isEqualToString:@"/"]){
            [mutNumArray replaceObjectsInRange:NSMakeRange(i, 2) withObjectsFromArray:@[[NSString stringWithFormat:@"%d", [mutNumArray[i] intValue] / [mutNumArray[i + 1] intValue]]]];
            
            [mutSignArray removeObjectAtIndex:i];
            
            
            i = -1;
        }
    }
    
    for (int i = 0; i < [mutSignArray count]; i++) {
        if ([[mutSignArray objectAtIndex:i] isEqualToString:@"+"]) {
            
            [mutNumArray replaceObjectsInRange:NSMakeRange(i, 2) withObjectsFromArray:@[[NSString stringWithFormat:@"%d", [mutNumArray[i] intValue] + [mutNumArray[i + 1] intValue]]]];
            
            [mutSignArray removeObjectAtIndex:i];
            
            i = -1;
            
        }else if ([[mutSignArray objectAtIndex:i] isEqualToString:@"-"]){
            [mutNumArray replaceObjectsInRange:NSMakeRange(i, 2) withObjectsFromArray:@[[NSString stringWithFormat:@"%d", [mutNumArray[i] intValue] - [mutNumArray[i + 1] intValue]]]];
            
            [mutSignArray removeObjectAtIndex:i];
            
            
            i = -1;
        }
    }
//    NSLog(@"mutNum = %@", mutNumArray);
//    NSLog(@"mutSignArray = %@", mutSignArray);
    return mutNumArray[0];
}

@end
