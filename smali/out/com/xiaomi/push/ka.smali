.class public final Lcom/xiaomi/push/ka;
.super Lcom/xiaomi/push/kb;


# instance fields
.field private a:I

.field private a:[B

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/push/kb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/ka;->a:I

    return v0
.end method

.method public a([BII)I
    .registers 6

    invoke-virtual {p0}, Lcom/xiaomi/push/ka;->b()I

    move-result v0

    if-le p3, v0, :cond_7

    move p3, v0

    :cond_7
    if-lez p3, :cond_13

    iget-object v0, p0, Lcom/xiaomi/push/ka;->a:[B

    iget v1, p0, Lcom/xiaomi/push/ka;->a:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p3}, Lcom/xiaomi/push/ka;->a(I)V

    :cond_13
    return p3
.end method

.method public a(I)V
    .registers 3

    iget v0, p0, Lcom/xiaomi/push/ka;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/push/ka;->a:I

    return-void
.end method

.method public a([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaomi/push/ka;->b([BII)V

    return-void
.end method

.method public a([BII)V
    .registers 4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No writing allowed!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()[B
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ka;->a:[B

    return-object v0
.end method

.method public b()I
    .registers 3

    iget v0, p0, Lcom/xiaomi/push/ka;->b:I

    iget v1, p0, Lcom/xiaomi/push/ka;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public b([BII)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/push/ka;->a:[B

    iput p2, p0, Lcom/xiaomi/push/ka;->a:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/xiaomi/push/ka;->b:I

    return-void
.end method
