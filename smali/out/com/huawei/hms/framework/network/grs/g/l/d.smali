.class public Lcom/huawei/hms/framework/network/grs/g/l/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/l/d;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/huawei/hms/framework/network/grs/g/l/d;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/l/d;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/l/d;->a:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/l/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/l/d;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/l/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/g/l/d;->d:I

    return v0
.end method
