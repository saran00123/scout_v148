.class public Lcom/alibaba/sdk/android/emas/d;
.super Ljava/lang/Object;
.source "EmasLog.java"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/emas/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/sdk/android/emas/b;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/emas/e;",
            ">;)V"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/alibaba/sdk/android/emas/b;->a:Lcom/alibaba/sdk/android/emas/b;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/sdk/android/emas/d;-><init>(Ljava/util/List;Lcom/alibaba/sdk/android/emas/b;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/alibaba/sdk/android/emas/b;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/emas/e;",
            ">;",
            "Lcom/alibaba/sdk/android/emas/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/d;->b:Ljava/util/List;

    .line 17
    iput-object p2, p0, Lcom/alibaba/sdk/android/emas/d;->c:Lcom/alibaba/sdk/android/emas/b;

    .line 18
    iput-object p3, p0, Lcom/alibaba/sdk/android/emas/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/alibaba/sdk/android/emas/b;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/d;->c:Lcom/alibaba/sdk/android/emas/b;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/emas/e;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/d;->c:Lcom/alibaba/sdk/android/emas/b;

    sget-object v1, Lcom/alibaba/sdk/android/emas/b;->b:Lcom/alibaba/sdk/android/emas/b;

    if-ne v0, v1, :cond_9

    .line 31
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/d;->c:Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method
