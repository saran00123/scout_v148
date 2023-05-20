.class Lcom/huawei/updatesdk/b/a/b/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/updatesdk/b/a/b/c$a;
    }
.end annotation


# direct methods
.method static a(Ljava/io/File;)Lcom/huawei/updatesdk/b/a/b/c$a;
    .registers 4

    new-instance v0, Lcom/huawei/updatesdk/b/a/b/c$a;

    invoke-direct {v0}, Lcom/huawei/updatesdk/b/a/b/c$a;-><init>()V

    invoke-static {p0}, Lcom/huawei/updatesdk/b/a/b/c;->b(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_27

    const-string v1, "mKeySetMapping"

    invoke-static {p0, v1}, Lcom/huawei/updatesdk/b/a/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/util/ArrayMap;

    if-eqz v2, :cond_19

    check-cast v1, Landroid/util/ArrayMap;

    iput-object v1, v0, Lcom/huawei/updatesdk/b/a/b/c$a;->a:Landroid/util/ArrayMap;

    :cond_19
    const-string v1, "mUpgradeKeySets"

    invoke-static {p0, v1}, Lcom/huawei/updatesdk/b/a/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Landroid/util/ArraySet;

    if-eqz v1, :cond_27

    check-cast p0, Landroid/util/ArraySet;

    iput-object p0, v0, Lcom/huawei/updatesdk/b/a/b/c$a;->b:Landroid/util/ArraySet;

    :cond_27
    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-string v0, "KeySetsUtils"

    const-string v1, "android.content.pm.PackageParser$Package"

    :try_start_4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_10} :catch_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_10} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_10} :catch_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_20

    :catch_11
    const-string p0, "can not find field,NoSuchFieldError"

    goto :goto_1c

    :catch_14
    const-string p0, "can not find field,IllegalAccessException"

    goto :goto_1c

    :catch_17
    const-string p0, "can not find field,NoSuchFieldException"

    goto :goto_1c

    :catch_1a
    const-string p0, "can not find class,ClassNotFoundException"

    :goto_1c
    invoke-static {v0, p0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_20
    return-object p0
.end method

.method private static b(Ljava/io/File;)Ljava/lang/Object;
    .registers 9

    const-string v0, "KeySetsUtils"

    const-string v1, "android.content.pm.PackageParser"

    :try_start_4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_8} :catch_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_8} :catch_4e
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_8} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_8} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_8} :catch_45
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_2e

    const-string v2, "parsePackage"

    const/4 v3, 0x2

    :try_start_b
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/io/File;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_2d} :catch_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_2d} :catch_4e
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_2d} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_2d} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_2d} :catch_45
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2d} :catch_2e

    goto :goto_57

    :catch_2e
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not get PackageParser,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_53

    :catch_45
    const-string p0, "can not get PackageParser,InvocationTargetException"

    goto :goto_53

    :catch_48
    const-string p0, "can not get PackageParser,IllegalAccessException"

    goto :goto_53

    :catch_4b
    const-string p0, "can not get PackageParser,InstantiationException"

    goto :goto_53

    :catch_4e
    const-string p0, "can not get PackageParser,NoSuchMethodException"

    goto :goto_53

    :catch_51
    const-string p0, "can not get PackageParser,ClassNotFoundException"

    :goto_53
    invoke-static {v0, p0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_57
    return-object p0
.end method
