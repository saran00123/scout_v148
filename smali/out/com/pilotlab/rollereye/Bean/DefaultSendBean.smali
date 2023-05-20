.class public Lcom/pilotlab/rollereye/Bean/DefaultSendBean;
.super Ljava/lang/Object;
.source "DefaultSendBean.java"

# interfaces
.implements Lcom/xuhao/didi/core/iocore/interfaces/ISendable;


# instance fields
.field protected content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/pilotlab/rollereye/Bean/DefaultSendBean;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/DefaultSendBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final parse()[B
    .registers 4

    .line 19
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/DefaultSendBean;->content:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 20
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 21
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-string v0, "\n"

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/DefaultSendBean;->content:Ljava/lang/String;

    return-void
.end method
