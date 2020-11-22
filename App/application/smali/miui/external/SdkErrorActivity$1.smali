.class Lmiui/external/SdkErrorActivity$1;
.super Ljava/lang/Object;
.source "SdkErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/external/SdkErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/external/SdkErrorActivity;


# direct methods
.method constructor <init>(Lmiui/external/SdkErrorActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lmiui/external/SdkErrorActivity$1;->this$0:Lmiui/external/SdkErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 65
    iget-object p0, p0, Lmiui/external/SdkErrorActivity$1;->this$0:Lmiui/external/SdkErrorActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x0

    .line 66
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
