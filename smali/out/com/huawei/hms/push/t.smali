.class public Lcom/huawei/hms/push/t;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 3

    .line 1
    new-instance v0, Lcom/huawei/hms/aaid/utils/PushPreferences;

    const-string v1, "push_notify_flag"

    invoke-direct {v0, p0, v1}, Lcom/huawei/hms/aaid/utils/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "notify_msg_enable"

    .line 2
    invoke-virtual {v0, v1}, Lcom/huawei/hms/aaid/utils/PushPreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1c

    .line 4
    invoke-static {p0}, Lcom/huawei/hms/push/t;->b(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1c
    const/16 v1, 0x13

    if-lt v0, v1, :cond_25

    .line 5
    invoke-static {p0}, Lcom/huawei/hms/push/t;->b(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_25
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "InlinedApi"
        }
    .end annotation

    const-string v0, "appops"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 4
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x1

    .line 5
    :try_start_17
    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_21} :catch_68
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_21} :catch_68
    .catch Ljava/lang/NoSuchFieldException; {:try_start_17 .. :try_end_21} :catch_68
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_21} :catch_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_21} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_21} :catch_68

    const-string v4, "checkOpNoThrow"

    const/4 v5, 0x3

    .line 6
    :try_start_24
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    .line 7
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_38} :catch_68
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_38} :catch_68
    .catch Ljava/lang/NoSuchFieldException; {:try_start_24 .. :try_end_38} :catch_68
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_38} :catch_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_38} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_38} :catch_68

    const-string v6, "OP_POST_NOTIFICATION"

    .line 8
    :try_start_3a
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 9
    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 10
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    aput-object p0, v5, v9

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_64} :catch_68
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3a .. :try_end_64} :catch_68
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3a .. :try_end_64} :catch_68
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_64} :catch_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_64} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_64} :catch_68

    if-nez p0, :cond_67

    goto :goto_68

    :cond_67
    move v2, v8

    :catch_68
    :goto_68
    return v2
.end method
