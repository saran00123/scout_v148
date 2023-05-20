.class final Lcom/jakewharton/rxbinding2/view/RxView$6;
.super Ljava/lang/Object;
.source "RxView.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding2/view/RxView;->visibility(Landroid/view/View;I)Lio/reactivex/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibilityWhenFalse:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 3

    .line 516
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/view/RxView$6;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/jakewharton/rxbinding2/view/RxView$6;->val$visibilityWhenFalse:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/view/RxView$6;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    iget p1, p0, Lcom/jakewharton/rxbinding2/view/RxView$6;->val$visibilityWhenFalse:I

    :goto_c
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 516
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding2/view/RxView$6;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
