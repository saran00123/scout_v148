.class public Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/params/SkeinParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private parameters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_24
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/SkeinParameters;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/crypto/params/SkeinParameters;->access$000(Lorg/bouncycastle/crypto/params/SkeinParameters;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/crypto/params/SkeinParameters;->access$000(Lorg/bouncycastle/crypto/params/SkeinParameters;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2c
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/params/SkeinParameters;
    .registers 4

    new-instance v0, Lorg/bouncycastle/crypto/params/SkeinParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/SkeinParameters;-><init>(Ljava/util/Hashtable;Lorg/bouncycastle/crypto/params/SkeinParameters$1;)V

    return-object v0
.end method

.method public set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .registers 5

    if-eqz p2, :cond_2c

    const/4 v0, 0x4

    if-eqz p1, :cond_18

    if-lt p1, v0, :cond_10

    const/16 v1, 0x3f

    if-ge p1, v1, :cond_10

    const/16 v1, 0x30

    if-eq p1, v1, :cond_10

    goto :goto_18

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter types must be in the range 0,5..47,49..62."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    :goto_18
    if-eq p1, v0, :cond_24

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter type 4 is reserved for internal use."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter value must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKey([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setKeyIdentifier([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .registers 3

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setNonce([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .registers 3

    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .registers 9

    const-string v0, " "

    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "YYYYMMDD"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    const/16 p1, 0x8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object p1
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_35} :catch_36

    return-object p1

    :catch_36
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Byte I/O failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .registers 10

    const-string v0, " "

    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "YYYYMMDD"

    invoke-direct {v3, v4, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    const/16 p1, 0x8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object p1
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_35} :catch_36

    return-object p1

    :catch_36
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Byte I/O failed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setPersonalisation([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .registers 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPublicKey([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .registers 3

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object p1

    return-object p1
.end method
