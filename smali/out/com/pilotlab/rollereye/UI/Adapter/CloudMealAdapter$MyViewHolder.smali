.class public Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CloudMealAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field public item_adapter_meal_number:Landroid/widget/TextView;

.field public item_adapter_meal_order:Landroid/widget/Button;

.field public item_adapter_meal_tips:Landroid/widget/TextView;

.field public item_adapter_meal_title:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;Landroid/view/View;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;

    .line 73
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
