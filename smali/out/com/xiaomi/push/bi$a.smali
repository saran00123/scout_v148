.class public final Lcom/xiaomi/push/bi$a;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read([BII)I
    .registers 6

    iget-boolean v0, p0, Lcom/xiaomi/push/bi$a;->a:Z

    const/4 v1, -0x1

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_c

    return p1

    :cond_c
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/push/bi$a;->a:Z

    return v1
.end method
