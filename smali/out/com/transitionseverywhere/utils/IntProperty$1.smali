.class Lcom/transitionseverywhere/utils/IntProperty$1;
.super Landroid/util/IntProperty;
.source "IntProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/utils/IntProperty;->optimize()Landroid/util/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/utils/IntProperty;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/utils/IntProperty;Ljava/lang/String;)V
    .registers 3

    .line 63
    iput-object p1, p0, Lcom/transitionseverywhere/utils/IntProperty$1;->this$0:Lcom/transitionseverywhere/utils/IntProperty;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/transitionseverywhere/utils/IntProperty$1;->this$0:Lcom/transitionseverywhere/utils/IntProperty;

    invoke-virtual {v0, p1}, Lcom/transitionseverywhere/utils/IntProperty;->get(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/utils/IntProperty$1;->get(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;I)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/transitionseverywhere/utils/IntProperty$1;->this$0:Lcom/transitionseverywhere/utils/IntProperty;

    invoke-virtual {v0, p1, p2}, Lcom/transitionseverywhere/utils/IntProperty;->setValue(Ljava/lang/Object;I)V

    return-void
.end method
