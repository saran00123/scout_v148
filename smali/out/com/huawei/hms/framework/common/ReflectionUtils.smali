.class public Lcom/huawei/hms/framework/common/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReflectionUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCompatible(Ljava/lang/String;)Z
    .registers 2

    .line 272
    :try_start_0
    invoke-static {p0}, Lcom/huawei/hms/framework/common/ReflectionUtils;->tryLoadClass(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    .line 274
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ClassNotFoundException"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReflectionUtils"

    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 299
    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    return-object v0
.end method

.method public static getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5

    const-string v0, "ReflectionUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_31

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_31

    .line 201
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 203
    :try_start_10
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 204
    new-instance p1, Lcom/huawei/hms/framework/common/ReflectionUtils$2;

    invoke-direct {p1, p0}, Lcom/huawei/hms/framework/common/ReflectionUtils$2;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_1c} :catch_2b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_1c} :catch_24
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    const-string p1, "not security int method getField,SecurityException:"

    .line 219
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    :catch_24
    move-exception p0

    const-string p1, "Exception in getField :: NoSuchFieldException:"

    .line 215
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    :catch_2b
    move-exception p0

    const-string p1, "Exception in getField :: IllegalArgumentException:"

    .line 213
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    return-object v1
.end method

.method public static getFieldObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const-string v0, "ReflectionUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_3c

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3c

    .line 165
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 167
    :try_start_10
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 168
    new-instance v2, Lcom/huawei/hms/framework/common/ReflectionUtils$1;

    invoke-direct {v2, p1}, Lcom/huawei/hms/framework/common/ReflectionUtils$1;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_20} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_20} :catch_2f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_20} :catch_28
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_20} :catch_21

    goto :goto_3c

    :catch_21
    move-exception p0

    const-string p1, "not security int method getFieldObj,SecurityException:"

    .line 185
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c

    :catch_28
    move-exception p0

    const-string p1, "Exception in getFieldObj :: NoSuchFieldException:"

    .line 181
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c

    :catch_2f
    move-exception p0

    const-string p1, "Exception in getFieldObj :: IllegalArgumentException:"

    .line 179
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c

    :catch_36
    move-exception p0

    const-string p1, "Exception in getFieldObj :: IllegalAccessException:"

    .line 177
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "ReflectionUtils"

    if-eqz p0, :cond_1b

    if-nez p1, :cond_8

    goto :goto_1b

    .line 57
    :cond_8
    :try_start_8
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_c} :catch_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-string p1, "NoSuchMethodException:"

    .line 61
    invoke-static {v1, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :catch_14
    move-exception p0

    const-string p1, "SecurityException:"

    .line 59
    invoke-static {v1, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    return-object v0

    :cond_1b
    :goto_1b
    const-string p0, "targetClass is  null pr name is null:"

    .line 53
    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getStaticFieldObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const-string v0, "ReflectionUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return-object v1

    .line 235
    :cond_6
    invoke-static {p0}, Lcom/huawei/hms/framework/common/ReflectionUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_3f

    .line 241
    :cond_13
    :try_start_13
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 242
    new-instance v2, Lcom/huawei/hms/framework/common/ReflectionUtils$3;

    invoke-direct {v2, p1}, Lcom/huawei/hms/framework/common/ReflectionUtils$3;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 249
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_23} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_23} :catch_32
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_23} :catch_2b
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_23} :catch_24

    goto :goto_3f

    :catch_24
    move-exception p0

    const-string p1, "not security int method getStaticFieldObj,SecurityException:"

    .line 259
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f

    :catch_2b
    move-exception p0

    const-string p1, "Exception in getFieldObj :: NoSuchFieldException:"

    .line 255
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f

    :catch_32
    move-exception p0

    const-string p1, "Exception in getFieldObj :: IllegalArgumentException:"

    .line 253
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f

    :catch_39
    move-exception p0

    const-string p1, "Exception in getFieldObj :: IllegalAccessException:"

    .line 251
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3f
    :goto_3f
    return-object v1
.end method

.method private static varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const-string v0, "ReflectionUtils"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return-object v1

    .line 34
    :cond_6
    :try_start_6
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_a} :catch_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    const-string p1, "Exception in invoke:"

    .line 38
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    :catch_12
    move-exception p0

    const-string p1, "RuntimeException in invoke:"

    .line 36
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    return-object v1
.end method

.method public static varargs invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 147
    invoke-static {p0}, Lcom/huawei/hms/framework/common/ReflectionUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/framework/common/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_c

    return-object p1

    .line 151
    :cond_c
    invoke-static {p1, p0, p3}, Lcom/huawei/hms/framework/common/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-eqz p2, :cond_14

    .line 116
    array-length v1, p2

    .line 117
    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_15

    .line 119
    aget-object v4, p2, v3

    invoke-static {v2, v4, v3}, Lcom/huawei/hms/framework/common/ReflectionUtils;->setClassType([Ljava/lang/Class;Ljava/lang/Object;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_14
    move-object v2, v0

    .line 122
    :cond_15
    invoke-static {p0}, Lcom/huawei/hms/framework/common/ReflectionUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, v2}, Lcom/huawei/hms/framework/common/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_20

    return-object v0

    .line 126
    :cond_20
    invoke-static {v0, p0, p2}, Lcom/huawei/hms/framework/common/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static setClassType([Ljava/lang/Class;Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 74
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 75
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, p0, p2

    goto :goto_57

    .line 76
    :cond_9
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_12

    .line 77
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object p1, p0, p2

    goto :goto_57

    .line 78
    :cond_12
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1b

    .line 79
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object p1, p0, p2

    goto :goto_57

    .line 80
    :cond_1b
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_24

    .line 81
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object p1, p0, p2

    goto :goto_57

    .line 82
    :cond_24
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2d

    .line 83
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object p1, p0, p2

    goto :goto_57

    .line 84
    :cond_2d
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_36

    .line 85
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object p1, p0, p2

    goto :goto_57

    .line 86
    :cond_36
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_3f

    .line 87
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object p1, p0, p2

    goto :goto_57

    .line 88
    :cond_3f
    instance-of v0, p1, Ljava/lang/Void;

    if-eqz v0, :cond_48

    .line 89
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object p1, p0, p2

    goto :goto_57

    .line 90
    :cond_48
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_51

    .line 91
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object p1, p0, p2

    goto :goto_57

    .line 93
    :cond_51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, p0, p2

    :goto_57
    return-void
.end method

.method private static tryLoadClass(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 286
    const-class v0, Lcom/huawei/hms/framework/common/ReflectionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    return-void

    .line 289
    :cond_c
    new-instance p0, Ljava/lang/ClassNotFoundException;

    const-string v0, "not found classloader"

    invoke-direct {p0, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
