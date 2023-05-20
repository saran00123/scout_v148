.class public abstract Lcom/huawei/hms/push/s;
.super Ljava/lang/Object;
.source "CommFun.java"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/push/s;->a:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 2
    sput v0, Lcom/huawei/hms/push/s;->b:I

    return-void
.end method

.method public static a()Z
    .registers 9

    const-string v0, "CommFun"

    const-string v1, "huawei.cust.HwCfgFilePolicy"

    const/4 v2, 0x0

    .line 8
    :try_start_5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_9} :catch_88
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_9} :catch_82
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_9} :catch_7c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_9} :catch_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_9} :catch_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_9} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_9} :catch_64
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_5e

    const-string v3, "CUST_TYPE_CONFIG"

    .line 9
    :try_start_b
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_19} :catch_88
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_19} :catch_82
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_19} :catch_7c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_19} :catch_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_19} :catch_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_19} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_19} :catch_64
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_5e

    const-string v4, "getCfgFile"

    const/4 v5, 0x2

    .line 11
    :try_start_1c
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 12
    new-array v5, v5, [Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_2d} :catch_88
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_2d} :catch_82
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1c .. :try_end_2d} :catch_7c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_2d} :catch_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2d} :catch_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_2d} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_2d} :catch_64
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2d} :catch_5e

    const-string v6, "jars/hwpush.jar"

    :try_start_2f
    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_8d

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_4a} :catch_88
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_4a} :catch_82
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2f .. :try_end_4a} :catch_7c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2f .. :try_end_4a} :catch_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_4a} :catch_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_4a} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_4a} :catch_64
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_4a} :catch_5e

    const-string v4, "get push cust File path is "

    :try_start_4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4c .. :try_end_5d} :catch_88
    .catch Ljava/lang/SecurityException; {:try_start_4c .. :try_end_5d} :catch_82
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4c .. :try_end_5d} :catch_7c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4c .. :try_end_5d} :catch_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4c .. :try_end_5d} :catch_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c .. :try_end_5d} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4c .. :try_end_5d} :catch_64
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5d} :catch_5e

    return v8

    :catch_5e
    const-string v1, "check jarFile exist but get not path"

    .line 15
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :catch_64
    const-string v1, "check cust exist push InvocationTargetException."

    .line 16
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :catch_6a
    const-string v1, "check cust exist push IllegalAccessException."

    .line 17
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :catch_70
    const-string v1, "check cust exist push IllegalArgumentException."

    .line 18
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :catch_76
    const-string v1, "check cust exist push NoSuchMethodException."

    .line 19
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :catch_7c
    const-string v1, "check cust exist push NoSuchFieldException."

    .line 20
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :catch_82
    const-string v1, "check cust exist push SecurityException."

    .line 21
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :catch_88
    const-string v1, "HwCfgFilePolicy ClassNotFoundException"

    .line 22
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    return v2
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "existFrameworkPush:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/huawei/hms/push/s;->b:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommFun"

    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "/system/framework/"

    const-string v1, "hwpush.jar"

    const/4 v2, 0x0

    .line 2
    :try_start_1d
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/huawei/hms/push/s;->a()Z

    move-result p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_49

    const-string v1, "push jarFile is exist"

    if-eqz p0, :cond_3d

    .line 4
    :try_start_39
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 5
    :cond_3d
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_48

    .line 6
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_46} :catch_49

    :goto_46
    const/4 p0, 0x1

    return p0

    :cond_48
    return v2

    :catch_49
    move-exception p0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Apk version faild ,Exception e= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_d

    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    if-nez p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static b(Landroid/content/Context;)J
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_10

    const-string v0, "com.huawei.android.pushagent"

    const/16 v1, 0x4000

    :try_start_8
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_10

    int-to-long v0, p0

    goto :goto_19

    :catch_10
    const-string p0, "CommFun"

    const-string v0, "get nc versionCode error"

    .line 3
    invoke-static {p0, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_19
    return-wide v0
.end method

.method public static b()Z
    .registers 2

    .line 4
    sget v0, Lcom/huawei/hms/android/HwBuildEx$VERSION;->EMUI_SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 2
    invoke-static {p0}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object p0

    const-string v0, "client/project_id"

    .line 3
    invoke-virtual {p0, v0}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Z
    .registers 2

    .line 1
    sget v0, Lcom/huawei/hms/android/HwBuildEx$VERSION;->EMUI_SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "existFrameworkPush:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/huawei/hms/push/s;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommFun"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hms/push/s;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_1b
    sget v1, Lcom/huawei/hms/push/s;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v4, v1, :cond_29

    .line 4
    sget p0, Lcom/huawei/hms/push/s;->b:I

    if-ne v3, p0, :cond_27

    move v2, v3

    :cond_27
    monitor-exit v0

    return v2

    .line 5
    :cond_29
    invoke-static {p0}, Lcom/huawei/hms/push/s;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 6
    sput v3, Lcom/huawei/hms/push/s;->b:I

    goto :goto_34

    .line 7
    :cond_32
    sput v2, Lcom/huawei/hms/push/s;->b:I

    .line 8
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_3b

    .line 9
    sget p0, Lcom/huawei/hms/push/s;->b:I

    if-ne v3, p0, :cond_3a

    move v2, v3

    :cond_3a
    return v2

    :catchall_3b
    move-exception p0

    .line 10
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method
