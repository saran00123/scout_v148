.class public final Lcom/xiaomi/push/ge;
.super Lcom/xiaomi/push/fy;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/xiaomi/push/fy;-><init>()V

    const-string v0, "PING"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/ge;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ge;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ge;->a(I)V

    return-void
.end method


# virtual methods
.method a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3

    invoke-virtual {p0}, Lcom/xiaomi/push/ge;->a()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_8

    return-object p1

    :cond_8
    invoke-super {p0, p1}, Lcom/xiaomi/push/fy;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/push/ge;->a()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    invoke-super {p0}, Lcom/xiaomi/push/fy;->c()I

    move-result v0

    return v0
.end method
