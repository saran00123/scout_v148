.class public Lcom/huawei/hms/framework/network/grs/e/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/e/b;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/huawei/hms/framework/network/grs/e/b;->a:I

    return-void
.end method

.method public a()Z
    .registers 3

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/e/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
