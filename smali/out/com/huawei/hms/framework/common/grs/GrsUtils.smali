.class public Lcom/huawei/hms/framework/common/grs/GrsUtils;
.super Ljava/lang/Object;
.source "GrsUtils.java"


# static fields
.field private static final GRS_KEY_INDEX:I = 0x1

.field private static final GRS_PATH_INDEX:I = 0x2

.field private static final GRS_SCHEMA:Ljava/lang/String; = "grs://"

.field private static final GRS_SERVICE_INDEX:I = 0x0

.field private static final MAX_GRS_SPLIT:I = 0x3

.field private static final SEPARATOR:Ljava/lang/String; = "/"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixResult([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 59
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_32

    const-string v0, "/"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_32

    .line 64
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_32
    :goto_32
    return-object p1
.end method

.method public static isGRSSchema(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "grs://"

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static parseGRSSchema(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 49
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "grs://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    .line 50
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/StringUtils;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    const/4 v1, 0x3

    .line 51
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 52
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    aput-object p0, v0, v2

    const-string p0, "ROOT"

    aput-object p0, v0, v1

    return-object v0

    :cond_2a
    return-object p0
.end method

.method public static parseParams(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const-string v0, "/"

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "grs://"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/huawei/hms/framework/common/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 45
    :cond_18
    invoke-static {p0}, Lcom/huawei/hms/framework/common/grs/GrsUtils;->parseGRSSchema(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
