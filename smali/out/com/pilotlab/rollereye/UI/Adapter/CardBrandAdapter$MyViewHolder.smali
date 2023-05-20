.class public Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CardBrandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field public item_adapter_cardbrand_img:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;Landroid/view/View;)V
    .registers 3

    .line 60
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;

    .line 61
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
