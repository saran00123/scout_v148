.class final Lcom/jakewharton/rxbinding2/widget/RxToolbar$4;
.super Ljava/lang/Object;
.source "RxToolbar.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding2/widget/RxToolbar;->subtitleRes(Landroid/widget/Toolbar;)Lio/reactivex/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/widget/RxToolbar$4;->val$view:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/RxToolbar$4;->val$view:Landroid/widget/Toolbar;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setSubtitle(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding2/widget/RxToolbar$4;->accept(Ljava/lang/Integer;)V

    return-void
.end method
