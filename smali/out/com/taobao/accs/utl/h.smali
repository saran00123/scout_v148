.class public Lcom/taobao/accs/utl/h;
.super Ljava/io/ByteArrayInputStream;
.source "Taobao"


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/taobao/accs/utl/h;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    new-array v0, p1, [B

    .line 30
    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/h;->read([B)I

    move-result v1

    if-ne v1, p1, :cond_10

    .line 32
    new-instance p1, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1

    .line 34
    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read len not match. ask for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but read for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .registers 3

    .line 17
    invoke-virtual {p0}, Lcom/taobao/accs/utl/h;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/taobao/accs/utl/h;->a()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public c()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/taobao/accs/utl/h;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 45
    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/h;->read([B)I

    return-object v0
.end method
