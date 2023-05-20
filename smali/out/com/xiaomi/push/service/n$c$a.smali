.class final Lcom/xiaomi/push/service/n$c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/n$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private a:[Lcom/xiaomi/push/service/n$d;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/n$c$a;->a:I

    iget v0, p0, Lcom/xiaomi/push/service/n$c$a;->a:I

    new-array v0, v0, [Lcom/xiaomi/push/service/n$d;

    iput-object v0, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    iput v0, p0, Lcom/xiaomi/push/service/n$c$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/service/o;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/push/service/n$c$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/n$c$a;Lcom/xiaomi/push/service/n$d;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/n$c$a;->a(Lcom/xiaomi/push/service/n$d;)I

    move-result p0

    return p0
.end method

.method private a(Lcom/xiaomi/push/service/n$d;)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method private c()V
    .registers 8

    iget v0, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    :goto_8
    iget-object v2, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/xiaomi/push/service/n$d;->a:J

    iget-object v4, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v4, v4, v1

    iget-wide v4, v4, Lcom/xiaomi/push/service/n$d;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2a

    iget-object v2, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v3, v2, v0

    aget-object v4, v2, v1

    aput-object v4, v2, v0

    aput-object v3, v2, v1

    add-int/lit8 v0, v1, -0x1

    div-int/lit8 v0, v0, 0x2

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_8

    :cond_2a
    return-void
.end method

.method private c(I)V
    .registers 10

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_4
    iget v1, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    if-ge v0, v1, :cond_42

    if-lez v1, :cond_42

    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_1f

    iget-object v1, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v1, v1, v2

    iget-wide v3, v1, Lcom/xiaomi/push/service/n$d;->a:J

    iget-object v1, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v1, v1, v0

    iget-wide v5, v1, Lcom/xiaomi/push/service/n$d;->a:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_1f

    move v0, v2

    :cond_1f
    iget-object v1, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v1, v1, p1

    iget-wide v1, v1, Lcom/xiaomi/push/service/n$d;->a:J

    iget-object v3, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcom/xiaomi/push/service/n$d;->a:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_30

    goto :goto_42

    :cond_30
    iget-object v1, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v2, v1, p1

    aget-object v3, v1, v0

    aput-object v3, v1, p1

    aput-object v2, v1, v0

    mul-int/lit8 p1, v0, 0x2

    add-int/lit8 p1, p1, 0x1

    move v7, v0

    move v0, p1

    move p1, v7

    goto :goto_4

    :cond_42
    :goto_42
    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/push/service/n$d;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a()V
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/service/n$c$a;->a:I

    new-array v0, v0, [Lcom/xiaomi/push/service/n$d;

    iput-object v0, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    return-void
.end method

.method public a(I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/xiaomi/push/service/n$d;->a:I

    if-ne v1, p1, :cond_14

    iget-object v1, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/xiaomi/push/service/n$d;->a()Z

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/push/service/n$c$a;->b()V

    return-void
.end method

.method public a(ILcom/xiaomi/push/service/n$b;)V
    .registers 4

    const/4 p1, 0x0

    :goto_1
    iget v0, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    if-ge p1, v0, :cond_17

    iget-object v0, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/xiaomi/push/service/n$d;->a:Lcom/xiaomi/push/service/n$b;

    if-ne v0, p2, :cond_14

    iget-object v0, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/xiaomi/push/service/n$d;->a()Z

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/push/service/n$c$a;->b()V

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/n$d;)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    array-length v1, v0

    iget v2, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    if-ne v1, v2, :cond_11

    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [Lcom/xiaomi/push/service/n$d;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    :cond_11
    iget-object v0, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    iget v1, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    aput-object p1, v0, v1

    invoke-direct {p0}, Lcom/xiaomi/push/service/n$c$a;->c()V

    return-void
.end method

.method public a()Z
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public a(I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/xiaomi/push/service/n$d;->a:I

    if-ne v2, p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    return v0
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/xiaomi/push/service/n$d;->a:Z

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/xiaomi/push/service/n$c$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/n$c$a;->c:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/n$c$a;->b(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method public b(I)V
    .registers 5

    if-ltz p1, :cond_18

    iget v0, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    if-ge p1, v0, :cond_18

    iget-object v1, p0, Lcom/xiaomi/push/service/n$c$a;->a:[Lcom/xiaomi/push/service/n$d;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    aget-object v0, v1, v0

    aput-object v0, v1, p1

    iget v0, p0, Lcom/xiaomi/push/service/n$c$a;->b:I

    const/4 v2, 0x0

    aput-object v2, v1, v0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/n$c$a;->c(I)V

    :cond_18
    return-void
.end method
