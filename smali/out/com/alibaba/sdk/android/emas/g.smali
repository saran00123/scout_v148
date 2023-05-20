.class Lcom/alibaba/sdk/android/emas/g;
.super Ljava/lang/Object;
.source "ForBackgroundCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/emas/g$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/emas/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/alibaba/sdk/android/emas/g;->d:I

    .line 13
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/emas/g;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/emas/g$a;)V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/g;->c:Ljava/util/List;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/g;->c:Ljava/util/List;

    .line 71
    :cond_b
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 22
    iget p1, p0, Lcom/alibaba/sdk/android/emas/g;->d:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/sdk/android/emas/g;->d:I

    .line 23
    iget-boolean p1, p0, Lcom/alibaba/sdk/android/emas/g;->a:Z

    if-nez p1, :cond_24

    .line 24
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/emas/g;->a:Z

    .line 25
    iget-object p1, p0, Lcom/alibaba/sdk/android/emas/g;->c:Ljava/util/List;

    if-eqz p1, :cond_24

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/emas/g$a;

    .line 27
    invoke-interface {v0}, Lcom/alibaba/sdk/android/emas/g$a;->b()V

    goto :goto_14

    :cond_24
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 45
    iget p1, p0, Lcom/alibaba/sdk/android/emas/g;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/alibaba/sdk/android/emas/g;->d:I

    .line 46
    iget p1, p0, Lcom/alibaba/sdk/android/emas/g;->d:I

    if-nez p1, :cond_25

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/emas/g;->a:Z

    .line 48
    iget-object p1, p0, Lcom/alibaba/sdk/android/emas/g;->c:Ljava/util/List;

    if-eqz p1, :cond_25

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/emas/g$a;

    .line 50
    invoke-interface {v0}, Lcom/alibaba/sdk/android/emas/g$a;->c()V

    goto :goto_15

    :cond_25
    return-void
.end method
