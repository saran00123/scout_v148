.class public Lcom/huawei/hms/framework/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final INIT_CAPACITY:I = 0x400

.field private static IS_AEGIS_STRING_LIBRARY_LOADED:Z = false

.field private static final SAFE_STRING_PATH:Ljava/lang/String; = "com.huawei.secure.android.common.util.SafeString"

.field private static final TAG:Ljava/lang/String; = "StringUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 87
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 88
    :goto_c
    array-length v1, p0

    if-ge v0, v1, :cond_1a

    .line 90
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_17

    const/16 v1, 0x2a

    .line 91
    aput-char v1, p0, v0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 94
    :cond_1a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static byte2Str([B)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 52
    :cond_5
    :try_start_5
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception p0

    const-string v1, "StringUtils.byte2str error: UnsupportedEncodingException"

    .line 54
    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static checkCompatible(Ljava/lang/String;)Z
    .registers 3

    .line 236
    const-class v0, Lcom/huawei/hms/framework/common/SecurityBase64Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 241
    :cond_a
    :try_start_a
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 242
    const-class p0, Lcom/huawei/hms/framework/common/StringUtils;

    monitor-enter p0
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_10} :catch_18

    const/4 v0, 0x1

    .line 243
    :try_start_11
    sput-boolean v0, Lcom/huawei/hms/framework/common/StringUtils;->IS_AEGIS_STRING_LIBRARY_LOADED:Z

    .line 244
    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_15

    :try_start_17
    throw v0
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    return v1
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 141
    :cond_5
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBytes(J)[B
    .registers 2

    .line 105
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/framework/common/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x0

    .line 115
    new-array v0, v0, [B

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    :try_start_6
    const-string v1, "utf-8"

    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_14

    :catch_d
    const-string p0, "StringUtils"

    const-string v1, "the content has error while it is converted to bytes"

    .line 122
    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_14
    return-object v0
.end method

.method public static getTraceInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6

    .line 158
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 160
    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_25

    aget-object v3, p0, v2

    const-string v4, "at "

    .line 161
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 163
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 220
    sget-boolean v0, Lcom/huawei/hms/framework/common/StringUtils;->IS_AEGIS_STRING_LIBRARY_LOADED:Z

    if-nez v0, :cond_1e

    const-string v0, "com.huawei.secure.android.common.util.SafeString"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/StringUtils;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1e

    .line 223
    :cond_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 225
    :try_start_19
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    return-object p0

    .line 221
    :cond_1e
    :goto_1e
    invoke-static {p0, p1, p2}, Lcom/huawei/secure/android/common/util/SafeString;->replace(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static str2Byte(Ljava/lang/String;)[B
    .registers 3

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 67
    new-array p0, v1, [B

    return-object p0

    :cond_a
    :try_start_a
    const-string v0, "UTF-8"

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    const-string v0, "StringUtils.str2Byte error: UnsupportedEncodingException"

    .line 72
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    new-array p0, v1, [B

    return-object p0
.end method

.method public static strEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

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

.method public static stringToBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    .line 303
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception p0

    const-string v0, "StringUtils"

    const-string v1, "String to Integer catch NumberFormatException."

    .line 305
    invoke-static {v0, v1, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p1
.end method

.method public static stringToInteger(Ljava/lang/String;I)I
    .registers 4

    .line 279
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    .line 284
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    const-string v0, "StringUtils"

    const-string v1, "String to Integer catch NumberFormatException."

    .line 286
    invoke-static {v0, v1, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    return p1
.end method

.method public static stringToLong(Ljava/lang/String;J)J
    .registers 5

    .line 259
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-wide p1

    .line 264
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    const-string v0, "StringUtils"

    const-string v1, "String to Long catch NumberFormatException."

    .line 266
    invoke-static {v0, v1, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    return-wide p1
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const-string v0, "com.huawei.secure.android.common.util.SafeString"

    .line 174
    invoke-static {v0}, Lcom/huawei/hms/framework/common/StringUtils;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 175
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/util/SafeString;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 177
    :cond_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_22

    if-ltz p1, :cond_22

    .line 179
    :try_start_1d
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    :cond_22
    return-object v1
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    .line 197
    sget-boolean v0, Lcom/huawei/hms/framework/common/StringUtils;->IS_AEGIS_STRING_LIBRARY_LOADED:Z

    if-nez v0, :cond_25

    const-string v0, "com.huawei.secure.android.common.util.SafeString"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/StringUtils;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_25

    .line 200
    :cond_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_24

    if-ltz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_24

    if-lt p2, p1, :cond_24

    .line 202
    :try_start_1f
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    :cond_24
    return-object v1

    .line 198
    :cond_25
    :goto_25
    invoke-static {p0, p1, p2}, Lcom/huawei/secure/android/common/util/SafeString;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    return-object p0

    .line 154
    :cond_3
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
