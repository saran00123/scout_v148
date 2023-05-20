.class public Lcom/meizu/cloud/pushsdk/d/f/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "e"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .registers 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_38

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_15

    const-wide/16 v3, 0x1

    :goto_13
    add-long/2addr v0, v3

    goto :goto_35

    :cond_15
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_1c

    const-wide/16 v3, 0x2

    goto :goto_13

    :cond_1c
    const v4, 0xd800

    const-wide/16 v5, 0x4

    if-lt v3, v4, :cond_2c

    const v4, 0xdfff

    if-gt v3, v4, :cond_2c

    add-long/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_2c
    const v4, 0xffff

    if-ge v3, v4, :cond_34

    const-wide/16 v3, 0x3

    goto :goto_13

    :cond_34
    add-long/2addr v0, v5

    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_38
    return-wide v0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_7

    return-object p0

    :cond_7
    if-nez p0, :cond_c

    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object p0

    :cond_c
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_a7

    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_16

    goto/16 :goto_a7

    :cond_16
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_38

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/d/f/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_25

    :cond_37
    return-object v0

    :cond_38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5d

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    :goto_4c
    if-ge v2, v1, :cond_5c

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/cloud/pushsdk/d/f/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_5c
    return-object v0

    :cond_5d
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_68

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/d/f/e;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_68
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_a7

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_a7

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_a7

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_a7

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_a7

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_a7

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_a7

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_a7

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8d

    goto :goto_a7

    :cond_8d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a6
    const/4 p0, 0x0

    :cond_a7
    :goto_a7
    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/d/f/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_33
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_19

    :catch_37
    move-exception v3

    sget-object v4, Lcom/meizu/cloud/pushsdk/d/f/e;->a:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const-string v1, "Could not put key \'%s\' and value \'%s\' into new JSONObject: %s"

    invoke-static {v4, v1, v5}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_19

    :cond_4f
    return-object v0
.end method

.method public static a(JJJ)Z
    .registers 6

    sub-long/2addr p2, p4

    cmp-long p0, p0, p2

    if-lez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lcom/meizu/cloud/pushsdk/d/f/e;->a:Ljava/lang/String;

    const-string v3, "Checking tracker internet connectivity."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/meizu/cloud/pushsdk/d/f/c;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_16

    return v1

    :cond_16
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_24

    move p0, v0

    goto :goto_25

    :cond_24
    move p0, v1

    :goto_25
    sget-object v2, Lcom/meizu/cloud/pushsdk/d/f/e;->a:Ljava/lang/String;

    const-string v3, "Tracker connection online: %s"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/meizu/cloud/pushsdk/d/f/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_35

    return p0

    :catch_35
    move-exception p0

    sget-object v2, Lcom/meizu/cloud/pushsdk/d/f/e;->a:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "Security exception checking connection: %s"

    invoke-static {v2, p0, v3}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    sget-object v0, Lcom/meizu/cloud/pushsdk/d/f/e;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "getCarrier: %s"

    invoke-static {v0, p0, v1}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-object v0, p0

    goto :goto_2f

    :catch_11
    move-exception p0

    sget-object v1, Lcom/meizu/cloud/pushsdk/d/f/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperator error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    :goto_2f
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_7
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_12

    return-object v1

    :cond_12
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Point;

    aput-object v3, p0, v2

    const-class v3, Landroid/view/Display;

    const-string v4, "getSize"

    invoke-virtual {v3, v4, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_27} :catch_28

    goto :goto_49

    :catch_28
    sget-object p0, Lcom/meizu/cloud/pushsdk/d/f/e;->a:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Display.getSize isn\'t available on older devices."

    invoke-static {p0, v4, v3}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    goto :goto_49

    :cond_40
    sget-object p0, Lcom/meizu/cloud/pushsdk/d/f/e;->a:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "error get display"

    invoke-static {p0, v2, v1}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_49
    return-object v0
.end method
