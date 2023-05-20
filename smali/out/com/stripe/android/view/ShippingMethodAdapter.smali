.class public final Lcom/stripe/android/view/ShippingMethodAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ShippingMethodAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001)B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001c\u001a\u00020\rH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\rH\u0016J\u0018\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\rH\u0016J\u0018\u0010#\u001a\u00020\u00022\u0006\u0010$\u001a\u00020%2\u0006\u0010\"\u001a\u00020\rH\u0016J\u0015\u0010&\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008(R&\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R0\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00162\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0016@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006*"
    }
    d2 = {
        "Lcom/stripe/android/view/ShippingMethodAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;",
        "()V",
        "onShippingMethodSelectedCallback",
        "Lkotlin/Function1;",
        "Lcom/stripe/android/model/ShippingMethod;",
        "",
        "getOnShippingMethodSelectedCallback$stripe_release",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnShippingMethodSelectedCallback$stripe_release",
        "(Lkotlin/jvm/functions/Function1;)V",
        "value",
        "",
        "selectedIndex",
        "getSelectedIndex$stripe_release",
        "()I",
        "setSelectedIndex$stripe_release",
        "(I)V",
        "selectedShippingMethod",
        "getSelectedShippingMethod",
        "()Lcom/stripe/android/model/ShippingMethod;",
        "",
        "shippingMethods",
        "getShippingMethods$stripe_release",
        "()Ljava/util/List;",
        "setShippingMethods$stripe_release",
        "(Ljava/util/List;)V",
        "getItemCount",
        "getItemId",
        "",
        "position",
        "onBindViewHolder",
        "holder",
        "i",
        "onCreateViewHolder",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "setSelected",
        "shippingMethod",
        "setSelected$stripe_release",
        "ShippingMethodViewHolder",
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
.field private onShippingMethodSelectedCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/model/ShippingMethod;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private synthetic selectedIndex:I

.field private shippingMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/android/model/ShippingMethod;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 12
    sget-object v0, Lcom/stripe/android/view/ShippingMethodAdapter$onShippingMethodSelectedCallback$1;->INSTANCE:Lcom/stripe/android/view/ShippingMethodAdapter$onShippingMethodSelectedCallback$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->onShippingMethodSelectedCallback:Lkotlin/jvm/functions/Function1;

    .line 14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->shippingMethods:Ljava/util/List;

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/ShippingMethodAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->shippingMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->shippingMethods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/model/ShippingMethod;

    invoke-virtual {p1}, Lcom/stripe/android/model/ShippingMethod;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getOnShippingMethodSelectedCallback$stripe_release()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/android/model/ShippingMethod;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->onShippingMethodSelectedCallback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getSelectedIndex$stripe_release()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->selectedIndex:I

    return v0
.end method

.method public final getSelectedShippingMethod()Lcom/stripe/android/model/ShippingMethod;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->shippingMethods:Ljava/util/List;

    iget v1, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->selectedIndex:I

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/model/ShippingMethod;

    return-object v0
.end method

.method public final getShippingMethods$stripe_release()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/ShippingMethod;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->shippingMethods:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 10
    check-cast p1, Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/view/ShippingMethodAdapter;->onBindViewHolder(Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;I)V
    .registers 4
    .param p1    # Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->shippingMethods:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/model/ShippingMethod;

    invoke-virtual {p1, v0}, Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;->setShippingMethod(Lcom/stripe/android/model/ShippingMethod;)V

    .line 56
    iget v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->selectedIndex:I

    if-ne p2, v0, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    invoke-virtual {p1, p2}, Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;->setSelected(Z)V

    .line 57
    invoke-virtual {p1}, Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;->getShippingMethodView$stripe_release()Lcom/stripe/android/view/ShippingMethodView;

    move-result-object p2

    new-instance v0, Lcom/stripe/android/view/ShippingMethodAdapter$onBindViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/android/view/ShippingMethodAdapter$onBindViewHolder$1;-><init>(Lcom/stripe/android/view/ShippingMethodAdapter;Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Lcom/stripe/android/view/ShippingMethodView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/view/ShippingMethodAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;
    .registers 10
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "viewGroup"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance p2, Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;

    new-instance v6, Lcom/stripe/android/view/ShippingMethodView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "viewGroup.context"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/ShippingMethodView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v6}, Lcom/stripe/android/view/ShippingMethodAdapter$ShippingMethodViewHolder;-><init>(Lcom/stripe/android/view/ShippingMethodView;)V

    return-object p2
.end method

.method public final setOnShippingMethodSelectedCallback$stripe_release(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/model/ShippingMethod;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->onShippingMethodSelectedCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSelected$stripe_release(Lcom/stripe/android/model/ShippingMethod;)V
    .registers 3
    .param p1    # Lcom/stripe/android/model/ShippingMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shippingMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->shippingMethods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/ShippingMethodAdapter;->setSelectedIndex$stripe_release(I)V

    return-void
.end method

.method public final setSelectedIndex$stripe_release(I)V
    .registers 4

    .line 25
    iget v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->selectedIndex:I

    if-eq v0, p1, :cond_17

    .line 27
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/ShippingMethodAdapter;->notifyItemChanged(I)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/ShippingMethodAdapter;->notifyItemChanged(I)V

    .line 29
    iput p1, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->selectedIndex:I

    .line 31
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->onShippingMethodSelectedCallback:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->shippingMethods:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method public final setShippingMethods$stripe_release(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/ShippingMethod;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/ShippingMethodAdapter;->setSelectedIndex$stripe_release(I)V

    .line 18
    iput-object p1, p0, Lcom/stripe/android/view/ShippingMethodAdapter;->shippingMethods:Ljava/util/List;

    .line 19
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingMethodAdapter;->notifyDataSetChanged()V

    return-void
.end method
