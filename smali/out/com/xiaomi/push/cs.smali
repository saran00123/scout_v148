.class public final Lcom/xiaomi/push/cs;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/cs;->a:Ljava/lang/String;

    iput p2, p0, Lcom/xiaomi/push/cs;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcom/xiaomi/push/cs;
    .registers 4

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    :try_start_10
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_18} :catch_1e

    if-gtz p0, :cond_1b

    goto :goto_1e

    :cond_1b
    move p1, p0

    goto :goto_1e

    :cond_1d
    move-object v1, p0

    :catch_1e
    :goto_1e
    new-instance p0, Lcom/xiaomi/push/cs;

    invoke-direct {p0, v1, p1}, Lcom/xiaomi/push/cs;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .registers 3

    invoke-static {p0, p1}, Lcom/xiaomi/push/cs;->a(Ljava/lang/String;I)Lcom/xiaomi/push/cs;

    move-result-object p0

    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/xiaomi/push/cs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/push/cs;->a()I

    move-result p0

    invoke-direct {p1, v0, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/cs;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/cs;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/xiaomi/push/cs;->a:I

    if-lez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/cs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/cs;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/xiaomi/push/cs;->a:Ljava/lang/String;

    return-object v0
.end method
