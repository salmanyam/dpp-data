deleted_nodes = list()

with open('ghttpd-svfg.dot', 'r') as fp:
	for line in fp.readlines():
		if 'label="{ActualINSVFGNode' in line:
			deleted_nodes.append(line.split()[0])
		elif 'label="{ActualOUTSVFGNode' in line:
			deleted_nodes.append(line.split()[0])
		elif 'label="{IntraMSSAPHISVFGNode' in line:
			deleted_nodes.append(line.split()[0])
		elif 'label="{FormalINSVFGNode' in line:
			deleted_nodes.append(line.split()[0])
		elif 'label="{FormalOUTSVFGNode' in line:
			deleted_nodes.append(line.split()[0])
		elif 'label="{FormalParmVFGNode' in line:
			deleted_nodes.append(line.split()[0])
		elif 'label="{FormalRetVFGNode' in line:
			deleted_nodes.append(line.split()[0])
		elif 'label="{ActualRetVFGNode' in line:
			deleted_nodes.append(line.split()[0])
		elif 'label="{ActualParmVFGNode' in line:
			deleted_nodes.append(line.split()[0])
		elif 'label="{IntraPHIVFGNode' in line:
			deleted_nodes.append(line.split()[0])
		else:
			if line.startswith('Node0x', 0, len('Node0x')):
				flag = False
				#print(line.split())
				for item in deleted_nodes:
					if line.split()[0].startswith(item, 0, len(item)):
						flag = True
						break

					if line.split()[2].startswith(item, 0, len(item)):
						flag = True
						break

				if not flag:
					print(line.strip())
			else:
				print(line.strip())


	#print(deleted_nodes)