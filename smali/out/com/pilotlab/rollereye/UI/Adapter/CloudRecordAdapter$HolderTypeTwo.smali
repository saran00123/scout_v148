.class Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeTwo;
.super Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;
.source "CloudRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HolderTypeTwo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;Landroid/view/View;)V
    .registers 3

    .line 297
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeTwo;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;Landroid/view/View;)V

    .line 299
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeTwo;->content:Landroid/view/ViewGroup;

    return-void
.end method
