.class public final synthetic Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$jXsLVyJHfHAVAI5sPA_FeDYOANY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/ui/TrackSelectionView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$jXsLVyJHfHAVAI5sPA_FeDYOANY;->f$0:Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$jXsLVyJHfHAVAI5sPA_FeDYOANY;->f$1:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$jXsLVyJHfHAVAI5sPA_FeDYOANY;->f$0:Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$TrackSelectionDialogBuilder$jXsLVyJHfHAVAI5sPA_FeDYOANY;->f$1:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->lambda$setUpDialogView$1$TrackSelectionDialogBuilder(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/content/DialogInterface;I)V

    return-void
.end method
