.class public Lcom/nimbusds/jose/shaded/json/JSONNavi;
.super Ljava/lang/Object;
.source "JSONNavi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ERROR_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;


# instance fields
.field private current:Ljava/lang/Object;

.field private factory:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

.field private failure:Z

.field private failureMessage:Ljava/lang/String;

.field private missingKey:Ljava/lang/Object;

.field private path:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readonly:Z

.field private root:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 627
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>(I)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->ERROR_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 81
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_ORDERED:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;-><init>(Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->stack:Ljava/util/Stack;

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->path:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    .line 45
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->readonly:Z

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->missingKey:Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->factory:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    .line 92
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->readonly:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->stack:Ljava/util/Stack;

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->path:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    .line 45
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->readonly:Z

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->missingKey:Ljava/lang/Object;

    .line 85
    invoke-static {p1}, Lcom/nimbusds/jose/shaded/json/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->root:Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->root:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->readonly:Z

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 538
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 653
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    .line 655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    .line 657
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->getJPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_38

    .line 660
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_30

    const/16 p1, 0x5b

    .line 661
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_30
    const/16 p1, 0x2f

    .line 663
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 664
    :cond_38
    :goto_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failureMessage:Ljava/lang/String;

    return-object p0
.end method

.method private isArray(Ljava/lang/Object;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 522
    :cond_4
    instance-of p1, p1, Ljava/util/List;

    return p1
.end method

.method private isObject(Ljava/lang/Object;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 531
    :cond_4
    instance-of p1, p1, Ljava/util/Map;

    return p1
.end method

.method public static newInstance()Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "Lcom/nimbusds/jose/shaded/json/JSONAwareEx;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONNavi;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;-><init>(Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)V

    return-object v0
.end method

.method public static newInstanceArray()Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "Lcom/nimbusds/jose/shaded/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONNavi;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;-><init>(Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)V

    .line 76
    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->array()Lcom/nimbusds/jose/shaded/json/JSONNavi;

    return-object v0
.end method

.method public static newInstanceObject()Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "Lcom/nimbusds/jose/shaded/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONNavi;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;-><init>(Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)V

    .line 67
    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->object()Lcom/nimbusds/jose/shaded/json/JSONNavi;

    return-object v0
.end method

.method public static newInstanceOrdered()Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "Ljava/util/Collection<",
            "*>;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONNavi;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_ORDERED:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;-><init>(Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)V

    return-object v0
.end method

.method private o(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 545
    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method private store()V
    .registers 4

    .line 491
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 492
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isObject(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 493
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->o(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->missingKey:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 494
    :cond_1a
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isArray(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 495
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->missingKey:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 496
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 497
    :goto_2c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_37

    const/4 v2, 0x0

    .line 498
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 499
    :cond_37
    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    :goto_3c
    return-void
.end method


# virtual methods
.method public varargs add([Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->array()Lcom/nimbusds/jose/shaded/json/JSONNavi;

    .line 252
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 254
    :cond_8
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 255
    array-length v1, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1a

    aget-object v3, p1, v2

    .line 256
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1a
    return-object p0
.end method

.method public array()Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 430
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->readonly:Z

    if-eqz v0, :cond_13

    const-string v0, "Can not create Array child in readonly"

    .line 433
    invoke-direct {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    .line 434
    :cond_13
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    if-eqz v0, :cond_2f

    .line 435
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1e

    return-object p0

    .line 437
    :cond_1e
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isObject()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "can not use Object feature on Array."

    .line 438
    invoke-direct {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    :cond_29
    const-string v0, "Can not use current possition as Object"

    .line 439
    invoke-direct {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    goto :goto_37

    .line 441
    :cond_2f
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->factory:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-interface {v0}, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->createArrayContainer()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    .line 443
    :goto_37
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->root:Ljava/lang/Object;

    if-nez v0, :cond_40

    .line 444
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->root:Ljava/lang/Object;

    goto :goto_43

    .line 446
    :cond_40
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->store()V

    :goto_43
    return-object p0
.end method

.method public asBoolean()Z
    .registers 3

    .line 383
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 384
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public asBooleanObj()Ljava/lang/Boolean;
    .registers 4

    .line 393
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 395
    :cond_6
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    .line 396
    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_d
    return-object v1
.end method

.method public asDouble()D
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_d

    .line 278
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public asDoubleObj()Ljava/lang/Double;
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_6
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1c

    .line 290
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_11

    .line 291
    check-cast v0, Ljava/lang/Double;

    return-object v0

    .line 292
    :cond_11
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1c
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 294
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public asFloat()D
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_e

    .line 303
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_e
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public asFloatObj()Ljava/lang/Float;
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 314
    :cond_6
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1c

    .line 315
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_11

    .line 316
    check-cast v0, Ljava/lang/Float;

    return-object v0

    .line 317
    :cond_11
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_1c
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 319
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public asInt()I
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_d

    .line 327
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public asIntegerObj()Ljava/lang/Integer;
    .registers 7

    .line 336
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 338
    :cond_6
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2d

    .line 339
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_11

    .line 340
    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 341
    :cond_11
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_2d

    .line 342
    check-cast v0, Ljava/lang/Long;

    .line 343
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2d

    .line 344
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2d
    return-object v1
.end method

.method public asLong()J
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_d

    .line 357
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public asLongObj()Ljava/lang/Long;
    .registers 4

    .line 366
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 368
    :cond_6
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_20

    .line 369
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_11

    .line 370
    check-cast v0, Ljava/lang/Long;

    return-object v0

    .line 371
    :cond_11
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_20

    .line 372
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_20
    return-object v1
.end method

.method public asString()Ljava/lang/String;
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 267
    :cond_6
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 268
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 269
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public at(I)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "*>;"
        }
    .end annotation

    .line 557
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 559
    :cond_5
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_16

    .line 560
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "current node is not an Array"

    invoke-direct {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    move-result-object p1

    return-object p1

    .line 561
    :cond_16
    check-cast v0, Ljava/util/List;

    if-gez p1, :cond_22

    .line 563
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr p1, v1

    if-gez p1, :cond_22

    const/4 p1, 0x0

    .line 567
    :cond_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_51

    .line 568
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->readonly:Z

    if-eqz v0, :cond_37

    .line 569
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Out of bound exception for index"

    invoke-direct {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    move-result-object p1

    return-object p1

    .line 571
    :cond_37
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->stack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->path:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 573
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    .line 574
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->missingKey:Ljava/lang/Object;

    return-object p0

    .line 577
    :cond_51
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->stack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->path:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 580
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    return-object p0
.end method

.method public at(Ljava/lang/String;)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "*>;"
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 135
    :cond_5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isObject()Z

    move-result v0

    if-nez v0, :cond_e

    .line 136
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->object()Lcom/nimbusds/jose/shaded/json/JSONNavi;

    .line 137
    :cond_e
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_1b

    const-string v0, "current node is not an Object"

    .line 138
    invoke-direct {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    move-result-object p1

    return-object p1

    .line 139
    :cond_1b
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->o(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 140
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->readonly:Z

    if-eqz v0, :cond_3f

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current Object have no key named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    move-result-object p1

    return-object p1

    .line 142
    :cond_3f
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->stack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->path:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    .line 145
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->missingKey:Ljava/lang/Object;

    return-object p0

    .line 148
    :cond_51
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->o(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->stack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->path:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 151
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    return-object p0
.end method

.method public atNext()Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "*>;"
        }
    .end annotation

    .line 590
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 592
    :cond_5
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_13

    const/4 v0, 0x0

    const-string v1, "current node is not an Array"

    .line 593
    invoke-direct {p0, v1, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    move-result-object v0

    return-object v0

    .line 594
    :cond_13
    check-cast v0, Ljava/util/List;

    .line 595
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->at(I)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4

    .line 166
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 168
    :cond_5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isArray()Z

    move-result v0

    if-nez v0, :cond_e

    .line 169
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->array()Lcom/nimbusds/jose/shaded/json/JSONNavi;

    .line 170
    :cond_e
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_1f

    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "current node is not an List"

    invoke-direct {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    move-result-object p1

    return-object p1

    .line 172
    :cond_1f
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 156
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 158
    :cond_5
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isObject()Z

    move-result v0

    if-nez v0, :cond_e

    .line 159
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->object()Lcom/nimbusds/jose/shaded/json/JSONNavi;

    .line 160
    :cond_e
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_1b

    const-string v0, "current node is not an Object"

    .line 161
    invoke-direct {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    move-result-object p1

    return-object p1

    .line 162
    :cond_1b
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->o(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentObject()Ljava/lang/Object;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    return-object v0
.end method

.method public getJPath()Ljava/lang/String;
    .registers 5

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->path:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 674
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_26

    const/16 v3, 0x2f

    .line 675
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_26
    const/16 v3, 0x5b

    .line 677
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 679
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeys()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_d

    .line 118
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoot()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->root:Ljava/lang/Object;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 125
    :cond_6
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isArray()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 126
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 127
    :cond_15
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isObject()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 128
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method public hasFailure()Z
    .registers 2

    .line 109
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    return v0
.end method

.method public isArray()Z
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isArray(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isObject()Z
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isObject(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public object()Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 405
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 407
    :cond_5
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->readonly:Z

    if-eqz v0, :cond_13

    const-string v0, "Can not create Object child in readonly"

    .line 408
    invoke-direct {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    .line 409
    :cond_13
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    if-eqz v0, :cond_2f

    .line 410
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isObject()Z

    move-result v0

    if-eqz v0, :cond_1e

    return-object p0

    .line 412
    :cond_1e
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->isArray()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "can not use Object feature on Array."

    .line 413
    invoke-direct {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    :cond_29
    const-string v0, "Can not use current possition as Object"

    .line 414
    invoke-direct {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    goto :goto_37

    .line 416
    :cond_2f
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->factory:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-interface {v0}, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->createObjectContainer()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    .line 418
    :goto_37
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->root:Ljava/lang/Object;

    if-nez v0, :cond_40

    .line 419
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->root:Ljava/lang/Object;

    goto :goto_43

    .line 421
    :cond_40
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->store()V

    :goto_43
    return-object p0
.end method

.method public root()Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->root:Ljava/lang/Object;

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 101
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->path:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->missingKey:Ljava/lang/Object;

    .line 104
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failureMessage:Ljava/lang/String;

    return-object p0
.end method

.method public set(Ljava/lang/Boolean;)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 465
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 467
    :cond_5
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    .line 468
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->store()V

    return-object p0
.end method

.method public set(Ljava/lang/Number;)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            ")",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 454
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 456
    :cond_5
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    .line 457
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->store()V

    return-object p0
.end method

.method public set(Ljava/lang/String;)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 476
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 478
    :cond_5
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    .line 479
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->store()V

    return-object p0
.end method

.method public set(Ljava/lang/String;D)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 227
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->set(Ljava/lang/String;Ljava/lang/Number;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;F)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 240
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->set(Ljava/lang/String;Ljava/lang/Number;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;I)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 214
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->set(Ljava/lang/String;Ljava/lang/Number;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;J)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 201
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->set(Ljava/lang/String;Ljava/lang/Number;)Lcom/nimbusds/jose/shaded/json/JSONNavi;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Number;)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ")",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->object()Lcom/nimbusds/jose/shaded/json/JSONNavi;

    .line 185
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 187
    :cond_8
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->o(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "TT;>;"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->object()Lcom/nimbusds/jose/shaded/json/JSONNavi;

    .line 177
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_8

    return-object p0

    .line 179
    :cond_8
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONNavi;->o(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 633
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_d

    .line 634
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failureMessage:Ljava/lang/String;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/JSONNavi;->ERROR_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONValue;->toJSONString(Ljava/lang/Object;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 635
    :cond_d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->root:Ljava/lang/Object;

    invoke-static {v0}, Lcom/nimbusds/jose/shaded/json/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;
    .registers 3

    .line 644
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failure:Z

    if-eqz v0, :cond_b

    .line 645
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->failureMessage:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONValue;->toJSONString(Ljava/lang/Object;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 646
    :cond_b
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->root:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONValue;->toJSONString(Ljava/lang/Object;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public up()Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "*>;"
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 621
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    .line 622
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->path:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_15
    return-object p0
.end method

.method public up(I)Lcom/nimbusds/jose/shaded/json/JSONNavi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/nimbusds/jose/shaded/json/JSONNavi<",
            "*>;"
        }
    .end annotation

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_1b

    .line 606
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    if-lez p1, :cond_1b

    .line 607
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->current:Ljava/lang/Object;

    .line 608
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONNavi;->path:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move p1, v0

    goto :goto_0

    :cond_1b
    return-object p0
.end method
