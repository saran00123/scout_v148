.class public final Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ShippingMethodAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/ShippingMethodAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShippingMethodViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "shippingMethodView",
        "Lcom/stripe/android/view/ShippingMethodView;",
        "(Lcom/stripe/android/view/ShippingMethodView;)V",
        "getShippingMethodView$stripe_release",
        "()Lcom/stripe/android/view/ShippingMethodView;",
        "setSelected",
        "",
        "selected",
        "",
        "setShippingMethod",
        "shippingMethod",
        "Lcom/stripe/android/model/ShippingMethod;",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final shippingMethodView:Lcom/stripe/android/view/ShippingMethodView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/android/view/ShippingMethodView;)V
    .registers 3
    .param p1    # Lcom/stripe/android/view/ShippingMethodView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shippingMethodView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;->shippingMethodView:Lcom/stripe/android/view/ShippingMethodView;

    return-void
.end method


# virtual methods
.method public final getShippingMethodView$stripe_release()Lcom/stripe/android/view/ShippingMethodView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;->shippingMethodView:Lcom/stripe/android/view/ShippingMethodView;

    return-object v0
.end method

.method public final setSelected(Z)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;->shippingMethodView:Lcom/stripe/android/view/ShippingMethodView;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/ShippingMethodView;->setSelected(Z)V

    return-void
.end method

.method public final setShippingMethod(Lcom/stripe/android/model/ShippingMethod;)V
    .registers 3
    .param p1    # Lcom/stripe/android/model/ShippingMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shippingMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;->shippingMethodView:Lcom/stripe/android/view/ShippingMethodView;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/ShippingMethodView;->setShippingMethod(Lcom/stripe/android/model/ShippingMethod;)V

    return-void
.end method
