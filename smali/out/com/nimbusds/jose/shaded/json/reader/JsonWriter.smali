.class public Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$WriterByInterface;
    }
.end annotation


# static fields
.field public static final EnumWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final JSONIterableWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final JSONJSONAwareExWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "Lcom/nimbusds/jose/shaded/json/JSONAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSONJSONAwareWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "Lcom/nimbusds/jose/shaded/json/JSONAware;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSONMapWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final JSONStreamAwareExWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "Lcom/nimbusds/jose/shaded/json/JSONStreamAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSONStreamAwareWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "Lcom/nimbusds/jose/shaded/json/JSONStreamAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final arrayWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final beansWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "*>;>;"
        }
    .end annotation
.end field

.field private writerInterfaces:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$WriterByInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$1;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$1;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONStreamAwareWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    .line 66
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$2;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$2;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONStreamAwareExWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    .line 73
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$3;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$3;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONJSONAwareExWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    .line 80
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$4;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$4;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONJSONAwareWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    .line 87
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$5;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$5;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONIterableWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    .line 109
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$6;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$6;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->EnumWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    .line 118
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$7;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$7;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONMapWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    .line 175
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$8;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$8;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->beansWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    .line 227
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$9;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$9;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->arrayWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->data:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->writerInterfaces:Ljava/util/LinkedList;

    .line 32
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->init()V

    return-void
.end method

.method public static writeJSONKV(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_8

    const-string p0, "null"

    .line 420
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1d

    .line 421
    :cond_8
    invoke-virtual {p3, p0}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mustProtectKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 422
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1d

    :cond_12
    const/16 v0, 0x22

    .line 424
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 425
    invoke-static {p0, p2, p3}, Lcom/nimbusds/jose/shaded/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    .line 426
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 428
    :goto_1d
    invoke-virtual {p3, p2}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->objectEndOfKey(Ljava/lang/Appendable;)V

    .line 429
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_2a

    .line 430
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->writeString(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_2d

    .line 432
    :cond_2a
    invoke-static {p1, p2, p3}, Lcom/nimbusds/jose/shaded/json/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    .line 433
    :goto_2d
    invoke-virtual {p3, p2}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->objectElmStop(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public addInterfaceWriterFirst(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->writerInterfaces:Ljava/util/LinkedList;

    new-instance v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$WriterByInterface;

    invoke-direct {v1, p1, p2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$WriterByInterface;-><init>(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public addInterfaceWriterLast(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->writerInterfaces:Ljava/util/LinkedList;

    new-instance v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$WriterByInterface;

    invoke-direct {v1, p1, p2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$WriterByInterface;-><init>(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public getWrite(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    return-object p1
.end method

.method public getWriterByInterface(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->writerInterfaces:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$WriterByInterface;

    .line 48
    iget-object v2, v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$WriterByInterface;->_interface:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 49
    iget-object p1, v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$WriterByInterface;->_writer:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public init()V
    .registers 7

    .line 243
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$10;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$10;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 249
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$11;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$11;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 255
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$12;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$12;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 264
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$13;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$13;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/Date;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 272
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$14;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$14;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 281
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$15;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$15;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Long;

    aput-object v3, v2, v1

    const-class v3, Ljava/lang/Byte;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/Short;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const-class v3, Ljava/math/BigInteger;

    const/4 v5, 0x4

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 287
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$16;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$16;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 293
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$17;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$17;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 303
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$18;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$18;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, [I

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 318
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$19;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$19;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, [S

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 333
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$20;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$20;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, [J

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 348
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$21;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$21;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, [F

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 363
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$22;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$22;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, [D

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 378
    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$23;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$23;-><init>(Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;)V

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, [Z

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 393
    const-class v0, Lcom/nimbusds/jose/shaded/json/JSONStreamAwareEx;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONStreamAwareExWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->addInterfaceWriterLast(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;)V

    .line 394
    const-class v0, Lcom/nimbusds/jose/shaded/json/JSONStreamAware;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONStreamAwareWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->addInterfaceWriterLast(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;)V

    .line 395
    const-class v0, Lcom/nimbusds/jose/shaded/json/JSONAwareEx;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONJSONAwareExWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->addInterfaceWriterLast(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;)V

    .line 396
    const-class v0, Lcom/nimbusds/jose/shaded/json/JSONAware;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONJSONAwareWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->addInterfaceWriterLast(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;)V

    .line 397
    const-class v0, Ljava/util/Map;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONMapWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->addInterfaceWriterLast(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;)V

    .line 398
    const-class v0, Ljava/lang/Iterable;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONIterableWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->addInterfaceWriterLast(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;)V

    .line 399
    const-class v0, Ljava/lang/Enum;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->EnumWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    invoke-virtual {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->addInterfaceWriterLast(Ljava/lang/Class;Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;)V

    return-void
.end method

.method public varargs registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 411
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p2, v1

    .line 412
    iget-object v3, p0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method
