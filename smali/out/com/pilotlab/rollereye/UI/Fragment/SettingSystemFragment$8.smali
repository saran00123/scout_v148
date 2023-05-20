.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;
.super Ljava/lang/Object;
.source "SettingSystemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->dialogChoice(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

.field final synthetic val$datalist:Ljava/util/List;

.field final synthetic val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

.field final synthetic val$myEnum:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;)V
    .registers 5

    .line 641
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;->val$datalist:Ljava/util/List;

    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    iput-object p4, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;->val$myEnum:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 643
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    const-string p2, ""

    move-object v0, p2

    move p2, p1

    .line 645
    :goto_8
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;->val$datalist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_48

    .line 646
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;->val$datalist:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "value"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 647
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;->val$datalist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_45
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 650
    :cond_48
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;->val$myEnum:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    invoke-static {p1, v0, p2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;Ljava/lang/String;Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;)V

    return-void
.end method
