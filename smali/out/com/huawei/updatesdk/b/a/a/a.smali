.class public Lcom/huawei/updatesdk/b/a/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/b/a/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/huawei/updatesdk/b/a/a/a;->a:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/huawei/updatesdk/b/a/a/a;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/b/a/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/huawei/updatesdk/b/a/a/a;->b:J

    return-wide v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/huawei/updatesdk/b/a/a/a;->a:I

    return v0
.end method
