.class public Lcom/huawei/hms/framework/network/grs/h/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/framework/network/grs/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/huawei/hms/framework/network/grs/h/d$a;->a:J

    iput-wide p3, p0, Lcom/huawei/hms/framework/network/grs/h/d$a;->b:J

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huawei/hms/framework/network/grs/h/d$a;->b:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/huawei/hms/framework/network/grs/h/d$a;->a:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method
