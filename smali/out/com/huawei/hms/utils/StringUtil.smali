.class public Lcom/huawei/hms/utils/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addByteForNum(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-object p0

    :cond_7
    if-le v0, p1, :cond_f

    sub-int/2addr v0, p1

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_f
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_14
    if-ge v0, p1, :cond_1c

    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 11
    :cond_1c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkVersion(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "(^([0-9]{1,2}\\.){2}[0-9]{1,2}$)|(^([0-9]{1,2}\\.){3}[0-9]{1,3}$)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static convertVersion2Integer(Ljava/lang/String;)I
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/huawei/hms/utils/StringUtil;->checkVersion(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    const-string v0, "\\."

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v0, p0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_12

    return v1

    .line 6
    :cond_12
    aget-object v0, p0, v1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x989680

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    aget-object v1, p0, v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v3, 0x186a0

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-object v1, p0, v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    .line 10
    array-length v1, p0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3d

    .line 11
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3d
    return v0

    :cond_3e
    return v1
.end method

.method public static objDesc(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "null"

    goto :goto_29

    .line 1
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_29
    return-object p0
.end method
