.class public Lcom/xiaomi/push/l;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:I = 0x0

.field private static a:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/p;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()I
    .registers 3

    sget v0, Lcom/xiaomi/push/l;->a:I

    if-nez v0, :cond_47

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "ro.miui.ui.version.code"

    invoke-static {v1}, Lcom/xiaomi/push/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    const-string v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Lcom/xiaomi/push/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_21

    :cond_1f
    move v1, v0

    goto :goto_22

    :cond_21
    :goto_21
    move v1, v2

    :goto_22
    if-eqz v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x2

    :goto_26
    sput v2, Lcom/xiaomi/push/l;->a:I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28} :catch_29

    goto :goto_31

    :catch_29
    move-exception v1

    const-string v2, "get isMIUI failed"

    invoke-static {v2, v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput v0, Lcom/xiaomi/push/l;->a:I

    :goto_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMIUI\'s value is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaomi/push/l;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    :cond_47
    sget v0, Lcom/xiaomi/push/l;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .registers 2

    const-string p0, "ro.miui.ui.version.code"

    invoke-static {p0}, Lcom/xiaomi/push/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_18

    :cond_13
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/push/p;
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/push/l;->b(Ljava/lang/String;)Lcom/xiaomi/push/p;

    move-result-object p0

    if-nez p0, :cond_8

    sget-object p0, Lcom/xiaomi/push/p;->b:Lcom/xiaomi/push/p;

    :cond_8
    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/xiaomi/push/u;->a()I

    move-result v0

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-lez v0, :cond_1b

    const/4 v1, 0x2

    if-ge v0, v1, :cond_12

    const-string v0, "alpha"

    return-object v0

    :cond_12
    const/4 v1, 0x3

    if-ge v0, v1, :cond_18

    const-string v0, "development"

    return-object v0

    :cond_18
    const-string v0, "stable"

    return-object v0

    :cond_1b
    const-string v0, ""

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/l;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bundle["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_10

    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_bb

    :cond_10
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v1, :cond_2c

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, [I

    if-eqz v3, :cond_47

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    :goto_42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b8

    :cond_47
    instance-of v3, v1, [B

    if-eqz v3, :cond_52

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_52
    instance-of v3, v1, [Z

    if-eqz v3, :cond_5d

    check-cast v1, [Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_5d
    instance-of v3, v1, [S

    if-eqz v3, :cond_68

    check-cast v1, [S

    invoke-static {v1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_68
    instance-of v3, v1, [J

    if-eqz v3, :cond_73

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_73
    instance-of v3, v1, [F

    if-eqz v3, :cond_7e

    check-cast v1, [F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_7e
    instance-of v3, v1, [D

    if-eqz v3, :cond_89

    check-cast v1, [D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_89
    instance-of v3, v1, [Ljava/lang/String;

    if-eqz v3, :cond_94

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_94
    instance-of v3, v1, [Ljava/lang/CharSequence;

    if-eqz v3, :cond_9f

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_9f
    instance-of v3, v1, [Landroid/os/Parcelable;

    if-eqz v3, :cond_aa

    check-cast v1, [Landroid/os/Parcelable;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_aa
    instance-of v3, v1, Landroid/os/Bundle;

    if-eqz v3, :cond_b5

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/xiaomi/push/l;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_b8
    const/4 v1, 0x0

    goto/16 :goto_19

    :cond_bb
    :goto_bb
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    const-string v4, ""

    aput-object v4, v3, p0

    invoke-static {v1, v2, v3}, Lcom/xiaomi/push/bj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17
    .catchall {:try_start_1 .. :try_end_16} :catchall_2c

    return-object p0

    :catch_17
    move-exception p0

    :try_start_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get property. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_2c

    :catchall_2c
    return-object v0
.end method

.method private static a()V
    .registers 3

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->a:Lcom/xiaomi/push/p;

    const-string v2, "CN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "FI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "SE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "NO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "FO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "EE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "LV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "LT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "BY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "MD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "UA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "PL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "CZ"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "SK"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "HU"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "DE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "AT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "CH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "LI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "GB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "IE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "NL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "BE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "LU"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "FR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "RO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "BG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "RS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "MK"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "AL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "GR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "SI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "HR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "IT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "SM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "MT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "ES"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "PT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "AD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "CY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const-string v2, "DK"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->d:Lcom/xiaomi/push/p;

    const-string v2, "RU"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/push/p;->e:Lcom/xiaomi/push/p;

    const-string v2, "IN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a()Z
    .registers 2

    invoke-static {}, Lcom/xiaomi/push/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 1

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/l;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    return p0

    :catch_e
    return v0
.end method

.method private static b(Ljava/lang/String;)Lcom/xiaomi/push/p;
    .registers 2

    invoke-static {}, Lcom/xiaomi/push/l;->a()V

    sget-object v0, Lcom/xiaomi/push/l;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/p;

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    const-string v1, "ro.miui.region"

    invoke-static {v1, v0}, Lcom/xiaomi/push/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v1, "persist.sys.oppo.region"

    invoke-static {v1, v0}, Lcom/xiaomi/push/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v1, "ro.oppo.regionmark"

    invoke-static {v1, v0}, Lcom/xiaomi/push/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v1, "ro.vendor.oplus.regionmark"

    invoke-static {v1, v0}, Lcom/xiaomi/push/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v1, "ro.hw.country"

    invoke-static {v1, v0}, Lcom/xiaomi/push/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v1, "ro.csc.countryiso_code"

    invoke-static {v1, v0}, Lcom/xiaomi/push/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string v1, "ro.product.country.region"

    invoke-static {v1, v0}, Lcom/xiaomi/push/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string v1, "gsm.vivo.countrycode"

    invoke-static {v1, v0}, Lcom/xiaomi/push/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string v1, "persist.sys.oem.region"

    invoke-static {v1, v0}, Lcom/xiaomi/push/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_78

    const-string v1, "ro.product.locale.region"

    invoke-static {v1, v0}, Lcom/xiaomi/push/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_84

    const-string v1, "persist.sys.country"

    invoke-static {v1, v0}, Lcom/xiaomi/push/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get region from system, region = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_9e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locale.default.country = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_c0
    return-object v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_12

    const/4 p0, 0x0

    aget-object p0, v0, p0

    :cond_12
    return-object p0
.end method

.method public static b()Z
    .registers 2

    invoke-static {}, Lcom/xiaomi/push/l;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/xiaomi/push/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .registers 2

    sget v0, Lcom/xiaomi/push/l;->b:I

    const/4 v1, 0x1

    if-gez v0, :cond_c

    invoke-static {}, Lcom/xiaomi/push/l;->e()Z

    move-result v0

    xor-int/2addr v0, v1

    sput v0, Lcom/xiaomi/push/l;->b:I

    :cond_c
    sget v0, Lcom/xiaomi/push/l;->b:I

    if-lez v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Lcom/xiaomi/push/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .registers 2

    sget-object v0, Lcom/xiaomi/push/p;->a:Lcom/xiaomi/push/p;

    invoke-virtual {v0}, Lcom/xiaomi/push/p;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/l;->a(Ljava/lang/String;)Lcom/xiaomi/push/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/p;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    const-string v0, "ro.product.manufacturer"

    invoke-static {v0}, Lcom/xiaomi/push/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Z
    .registers 2

    const-string v0, ""

    :try_start_2
    const-string v1, "ro.miui.ui.version.code"

    invoke-static {v1, v0}, Lcom/xiaomi/push/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_8

    :catch_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
