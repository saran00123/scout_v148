.class final Lcom/meizu/cloud/pushsdk/c/g/j;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field final e:Z

.field f:Lcom/meizu/cloud/pushsdk/c/g/j;

.field g:Lcom/meizu/cloud/pushsdk/c/g/j;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->d:Z

    return-void
.end method

.method constructor <init>(Lcom/meizu/cloud/pushsdk/c/g/j;)V
    .registers 4

    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iget v1, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget p1, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    invoke-direct {p0, v0, v1, p1}, Lcom/meizu/cloud/pushsdk/c/g/j;-><init>([BII)V

    return-void
.end method

.method constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iput p2, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iput p3, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/meizu/cloud/pushsdk/c/g/j;
    .registers 5

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_6

    goto :goto_7

    :cond_6
    move-object v0, v1

    :goto_7
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object v3, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object v2, v3, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    return-object v0
.end method

.method public a(I)Lcom/meizu/cloud/pushsdk/c/g/j;
    .registers 4

    if-lez p1, :cond_1e

    iget v0, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget v1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1e

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/g/j;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/c/g/j;-><init>(Lcom/meizu/cloud/pushsdk/c/g/j;)V

    iget v1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget v1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/c/g/j;->a(Lcom/meizu/cloud/pushsdk/c/g/j;)Lcom/meizu/cloud/pushsdk/c/g/j;

    return-object v0

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a(Lcom/meizu/cloud/pushsdk/c/g/j;)Lcom/meizu/cloud/pushsdk/c/g/j;
    .registers 3

    iput-object p0, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object v0, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object p1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    return-object p1
.end method

.method public a(Lcom/meizu/cloud/pushsdk/c/g/j;I)V
    .registers 7

    iget-boolean v0, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->e:Z

    if-eqz v0, :cond_4a

    iget v0, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    add-int v1, v0, p2

    const/16 v2, 0x800

    if-le v1, v2, :cond_34

    iget-boolean v1, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->d:Z

    if-nez v1, :cond_2e

    add-int v1, v0, p2

    iget v3, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_28

    iget-object v1, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget v1, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iput v2, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    goto :goto_34

    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iget v1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget-object v2, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iget v3, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget p1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    return-void

    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    if-eq v0, p0, :cond_2a

    iget-boolean v1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->e:Z

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget v1, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget v2, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    rsub-int v2, v2, 0x800

    iget-boolean v3, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->d:Z

    if-eqz v3, :cond_18

    const/4 v0, 0x0

    goto :goto_1a

    :cond_18
    iget v0, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    :goto_1a
    add-int/2addr v2, v0

    if-le v1, v2, :cond_1e

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/c/g/j;->a(Lcom/meizu/cloud/pushsdk/c/g/j;I)V

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/j;->a()Lcom/meizu/cloud/pushsdk/c/g/j;

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/g/k;->a(Lcom/meizu/cloud/pushsdk/c/g/j;)V

    return-void

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
