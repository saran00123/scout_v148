.class public Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RouteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field public item_adapter_route_title:Landroid/widget/TextView;

.field public item_adapter_route_video:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;Landroid/view/View;)V
    .registers 3

    .line 123
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

    .line 124
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
