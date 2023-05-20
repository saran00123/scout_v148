.class public interface abstract Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stripe/android/stripe3ds2/init/ui/Customization;


# virtual methods
.method public abstract getBackgroundColor()Ljava/lang/String;
.end method

.method public abstract getButtonText()Ljava/lang/String;
.end method

.method public abstract getHeaderText()Ljava/lang/String;
.end method

.method public abstract getStatusBarColor()Ljava/lang/String;
.end method

.method public abstract setBackgroundColor(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation
.end method

.method public abstract setButtonText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation
.end method

.method public abstract setHeaderText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation
.end method

.method public abstract setStatusBarColor(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation
.end method
