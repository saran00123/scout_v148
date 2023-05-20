.class public Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ListChoiseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field cbCheckBox:Landroid/widget/CheckBox;

.field item_adapter_choise_txt:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter$ViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
