.class public Lcom/huawei/appgallery/serviceverifykit/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/appgallery/serviceverifykit/a/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/huawei/appgallery/serviceverifykit/a/a;->b:I

    iput p3, p0, Lcom/huawei/appgallery/serviceverifykit/a/a;->c:I

    iput p4, p0, Lcom/huawei/appgallery/serviceverifykit/a/a;->d:I

    iput p5, p0, Lcom/huawei/appgallery/serviceverifykit/a/a;->e:I

    iput p6, p0, Lcom/huawei/appgallery/serviceverifykit/a/a;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/huawei/appgallery/serviceverifykit/a/a;->c:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/huawei/appgallery/serviceverifykit/a/a;->f:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/huawei/appgallery/serviceverifykit/a/a;->e:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/huawei/appgallery/serviceverifykit/a/a;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/appgallery/serviceverifykit/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/huawei/appgallery/serviceverifykit/a/a;->b:I

    return v0
.end method
