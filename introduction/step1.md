# Running the Red Hat Application Migration Toolkit CLI

Execute `bin/rhamt-cli --version`{{execute}} to display the currently installed version of the CLI.

# Generate the Reports

Run the CLI against the included java source:

<pre class="file" data-filename="app.js" data-target="replace">bin/rhamt-cli --sourceMode --input /test-files/src_example/ --output /windup-reports-xml/ --target eap --packages org.windup
</pre>
