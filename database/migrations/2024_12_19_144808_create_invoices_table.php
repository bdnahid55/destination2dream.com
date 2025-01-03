<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->id();
            $table->integer('client_id')->nullable();
            $table->string('invoice_code')->nullable();
            $table->timestamp('date')->nullable();
            $table->integer('service')->nullable();
            $table->decimal('hour_rate', 8, 2)->nullable();
            $table->integer('total_hour')->nullable();
            $table->decimal('total_amount', 8, 2)->nullable();
            $table->enum('status',['pending','paid', 'cancelled'])->default('pending');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('invoices');
    }
};
