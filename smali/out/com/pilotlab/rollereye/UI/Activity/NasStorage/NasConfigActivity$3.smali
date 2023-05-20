.class Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;
.super Ljava/lang/Object;
.source "NasConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->dialogChoice(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

.field final synthetic val$datalist:Ljava/util/List;

.field final synthetic val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V
    .registers 4

    .line 256
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->val$datalist:Ljava/util/List;

    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 258
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    move p2, p1

    .line 260
    :goto_5
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->val$datalist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_129

    .line 261
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->val$datalist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_125

    move v0, p1

    .line 262
    :goto_33
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_83

    .line 263
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->val$datalist:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 264
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->setStorageTime(I)V

    .line 265
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->val$datalist:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_83
    move v0, p1

    .line 268
    :goto_84
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_d4

    .line 269
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->val$datalist:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 270
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->setUploadGap(I)V

    .line 271
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->val$datalist:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d1
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_d4
    move v0, p1

    .line 274
    :goto_d5
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_125

    .line 275
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->val$datalist:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    .line 276
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->setType(I)V

    .line 277
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->val$datalist:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_122
    add-int/lit8 v0, v0, 0x1

    goto :goto_d5

    :cond_125
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_5

    .line 282
    :cond_129
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V

    return-void
.end method
