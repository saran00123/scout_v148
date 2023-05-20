.class public Lcom/xiaomi/push/jj;
.super Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/jj;->count:I

    return v0
.end method

.method public a()[B
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/jj;->buf:[B

    return-object v0
.end method
