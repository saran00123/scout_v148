.class public final Lcom/huawei/agconnect/core/a/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/huawei/agconnect/core/Service;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/agconnect/core/Service;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/agconnect/core/a/c;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/agconnect/core/a/c;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/huawei/agconnect/core/a/c;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/huawei/agconnect/AGConnectInstance;Lcom/huawei/agconnect/core/Service;)Ljava/lang/Object;
    .registers 11

    const-string v0, "Instantiate service exception "

    const-string v1, "ServiceRepository"

    invoke-virtual {p2}, Lcom/huawei/agconnect/core/Service;->getInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {p2}, Lcom/huawei/agconnect/core/Service;->getInstance()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p2}, Lcom/huawei/agconnect/core/Service;->getType()Ljava/lang/Class;

    move-result-object p2

    const/4 v2, 0x0

    if-nez p2, :cond_17

    return-object v2

    :cond_17
    const/4 v3, 0x2

    :try_start_18
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lcom/huawei/agconnect/AGConnectInstance;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {p2, v4}, Lcom/huawei/agconnect/core/a/c;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    if-eqz v4, :cond_39

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/huawei/agconnect/AGConnectInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, p2, v6

    aput-object p1, p2, v7

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_39
    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-static {p2, v3}, Lcom/huawei/agconnect/core/a/c;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-eqz v3, :cond_52

    new-array p2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/huawei/agconnect/AGConnectInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    aput-object p1, p2, v6

    invoke-virtual {v3, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_52
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_56
    .catch Ljava/lang/InstantiationException; {:try_start_18 .. :try_end_56} :catch_73
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_56} :catch_65
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_56} :catch_57

    return-object p1

    :catch_57
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_80

    :catch_65
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_80

    :catch_73
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    :goto_80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static varargs a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    if-ge v2, v0, :cond_2c

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    array-length v7, p1

    if-ne v6, v7, :cond_29

    move v6, v3

    move v3, v1

    :goto_16
    array-length v7, p1

    if-ge v3, v7, :cond_25

    aget-object v6, v5, v3

    aget-object v7, p1, v3

    if-ne v6, v7, :cond_21

    const/4 v6, 0x1

    goto :goto_22

    :cond_21
    move v6, v1

    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_25
    if-eqz v6, :cond_28

    return-object v4

    :cond_28
    move v3, v6

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/huawei/agconnect/AGConnectInstance;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/agconnect/AGConnectInstance;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/agconnect/core/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/agconnect/core/Service;

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    invoke-virtual {v0}, Lcom/huawei/agconnect/core/Service;->isSingleton()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/huawei/agconnect/core/a/c;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    return-object v1

    :cond_1b
    invoke-direct {p0, p1, v0}, Lcom/huawei/agconnect/core/a/c;->a(Lcom/huawei/agconnect/AGConnectInstance;Lcom/huawei/agconnect/core/Service;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2c

    invoke-virtual {v0}, Lcom/huawei/agconnect/core/Service;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/huawei/agconnect/core/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-object p1
.end method

.method public a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/agconnect/core/Service;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/agconnect/core/Service;

    iget-object v1, p0, Lcom/huawei/agconnect/core/a/c;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/huawei/agconnect/core/Service;->getInterface()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_1d
    return-void
.end method
